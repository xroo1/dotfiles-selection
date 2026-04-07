#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

PROJECT_DIR="$HOME/.config/theme-manager"
THEMES_DIR="$PROJECT_DIR/theme"
SRC_DIR="$PROJECT_DIR/src"
BACKUP_ROOT_DIR="$HOME/.config/backups_theme_manager"

BACKUP_ALL=false
SKIP_ALL=false
CURRENT_BACKUP_SESSION=""

print_msg() { echo -e "${GREEN}[INFO]${NC} $1"; }
print_err() { echo -e "${RED}[ERROR]${NC} $1"; }
print_warn() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
print_header() { echo -e "${BLUE}=== $1 ===${NC}"; }

create_backup_session() {
    local timestamp=$(date +%Y%m%d_%H%M%S)
    CURRENT_BACKUP_SESSION="$BACKUP_ROOT_DIR/backup_$timestamp"
    mkdir -p "$CURRENT_BACKUP_SESSION"
    print_msg "Sessão de backup: $CURRENT_BACKUP_SESSION"
}

backup_config() {
    local config_name="$1"
    local config_path="$HOME/.config/$config_name"
    
    [ ! -e "$config_path" ] && return 1
    
    [ -z "$CURRENT_BACKUP_SESSION" ] && create_backup_session
    
    mv "$config_path" "$CURRENT_BACKUP_SESSION/$config_name"
    print_msg "Backup: $config_name"
    return 0
}

backup_interactive() {
    local config_name="$1"
    
    [ ! -e "$HOME/.config/$config_name" ] && return 1
    
    [ "$SKIP_ALL" = true ] && { print_msg "Pulado: $config_name"; return 1; }
    
    if [ "$BACKUP_ALL" = true ]; then
        backup_config "$config_name"
        return 0
    fi
    
    echo ""
    print_warn "Configuração existente: $config_name"
    echo -n "Backup? (s/N/a=todos/k=pular): "
    read -r opt
    
    case $opt in
        [Aa]) BACKUP_ALL=true; backup_config "$config_name" ;;
        [Kk]) SKIP_ALL=true; print_msg "Pulando todos" ;;
        [Ss]) backup_config "$config_name" ;;
        *) print_msg "Pulado: $config_name" ;;
    esac
}

apply_background() {
    local bg_file="$1"
    
    if [ -f "$bg_file" ]; then
        print_msg "Aplicando background..."
        
        if command -v feh &> /dev/null; then
            bash "$bg_file"
            print_msg "Background aplicado"
        else
            print_warn "feh não instalado. Instale: sudo apt install feh"
        fi
    fi
}


apply_st() {

    print_warn "Compilar ST Term com o novo thema ? ( s/n )"
    read -r comp

    case $comp in 
        s)
            cd ~/.config/st/
            sudo make clean install
            print_msg "ST TERM Compilado."
            ;;
        *)
            print_warn "O ST Term nao foi compilado."
            ;;
    esac
}


list_themes() {
    local themes=()
    local count=0
    
    echo ""
    print_header "Temas Disponíveis"
    
    for theme in "$THEMES_DIR"/*; do
        if [ -d "$theme" ]; then
            count=$((count + 1))
            themes+=("$(basename "$theme")")
            if [ -f "$theme/background" ]; then
                echo -e "${GREEN}$count)${NC} $(basename "$theme") ${YELLOW}[bg]${NC}"
            else
                echo -e "${GREEN}$count)${NC} $(basename "$theme")"
            fi
        fi
    done
    
    echo -e "${YELLOW}0)${NC} Sair"
    echo ""
    
    # Retorna o número de temas e os nomes via variável global
    THEMES_LIST=("${themes[@]}")
    return $count
}

apply_theme() {
    local theme_name="$1"
    local theme_path="$THEMES_DIR/$theme_name"
    
    [ ! -d "$theme_path" ] && { print_err "Tema não encontrado"; return 1; }
    
    print_header "Aplicando tema: $theme_name"
    
    # Reseta variáveis
    BACKUP_ALL=false
    SKIP_ALL=false
    CURRENT_BACKUP_SESSION=""
    
    # Aplica background
    apply_background "$theme_path/background"

    # Copia configurações
    for item in "$theme_path"/*; do
        [ -e "$item" ] || continue
        
        local item_name=$(basename "$item")
        [ "$item_name" = "background" ] && continue
        
        local target="$HOME/.config/$item_name"
        
        # Se existir, faz backup
        [ -e "$target" ] && backup_interactive "$item_name"
        
        # Copia
        print_msg "Copiando: $item_name"
        cp -rf "$item" "$target" 2>/dev/null || cp -f "$item" "$target"
    done
    
    # Resumo do backup
    if [ -n "$CURRENT_BACKUP_SESSION" ]; then
        local count=$(ls -1 "$CURRENT_BACKUP_SESSION" 2>/dev/null | wc -l)
        echo ""
        print_msg "Backup salvo em: $CURRENT_BACKUP_SESSION"
        print_msg "Total: $count configurações"
    fi
 
    apply_st

    print_msg "Reiniciando o i3"
    i3-msg restart


    print_msg "Tema $theme_name aplicado!"
}

# Restaurar backup
restore_backups() {
    print_header "Restaurar Backups"
    
    local sessions=()
    local count=0
    
    for session in "$BACKUP_ROOT_DIR"/backup_*; do
        if [ -d "$session" ]; then
            count=$((count + 1))
            sessions+=("$(basename "$session")")
            local item_count=$(ls -1 "$session" 2>/dev/null | wc -l)
            echo -e "${GREEN}$count)${NC} $(basename "$session") ${YELLOW}[$item_count itens]${NC}"
        fi
    done
    
    if [ $count -eq 0 ]; then
        print_msg "Nenhum backup encontrado"
        return
    fi
    
    echo -e "${YELLOW}0)${NC} Voltar"
    echo ""
    echo -n "Escolha: "
    read -r choice
    
    if [ "$choice" -eq 0 ] 2>/dev/null; then
        return
    fi
    
    if [ "$choice" -ge 1 ] 2>/dev/null && [ "$choice" -le "$count" ]; then
        local session_path="$BACKUP_ROOT_DIR/${sessions[$((choice-1))]}"
        
        echo ""
        echo -e "${GREEN}1)${NC} Restaurar tudo"
        echo -e "${GREEN}2)${NC} Restaurar item específico"
        echo -n "Opção: "
        read -r opt
        
        case $opt in
            1)
                for item in "$session_path"/*; do
                    local name=$(basename "$item")
                    local target="$HOME/.config/$name"
                    [ -e "$target" ] && rm -rf "$target"
                    cp -r "$item" "$target"
                    print_msg "Restaurado: $name"
                done
                print_msg "Sessão restaurada!"
                ;;
            2)
                local items=()
                local item_count=0
                for item in "$session_path"/*; do
                    item_count=$((item_count + 1))
                    items+=("$(basename "$item")")
                    echo -e "${GREEN}$item_count)${NC} $(basename "$item")"
                done
                echo -n "Escolher (1-$item_count): "
                read -r item_choice
                if [ "$item_choice" -ge 1 ] 2>/dev/null && [ "$item_choice" -le "$item_count" ]; then
                    local name="${items[$((item_choice-1))]}"
                    local target="$HOME/.config/$name"
                    [ -e "$target" ] && rm -rf "$target"
                    cp -r "$session_path/$name" "$target"
                    print_msg "Restaurado: $name"
                fi
                ;;
        esac
    else
        print_err "Opção inválida"
    fi
}

# Restaurar background padrão
restore_default_bg() {
    print_header "Restaurar Background Padrão"
    
    if [ ! -f "$SRC_DIR/background" ]; then
        print_err "Background padrão não encontrado"
        return
    fi
    
    echo -n "Restaurar background padrão? (s/N): "
    read -r confirm
    
    if [[ "$confirm" =~ ^[Ss]$ ]]; then
        apply_background "$SRC_DIR/background"
        print_msg "Background padrão restaurado!"
    fi
}

# Criar novo tema
create_theme() {
    print_header "Criar Novo Tema"
    echo -n "Nome do tema: "
    read -r theme_name
    
    if [ -z "$theme_name" ]; then
        print_err "Nome inválido"
        return
    fi
    
    local theme_path="$THEMES_DIR/$theme_name"
    
    if [ -d "$theme_path" ]; then
        print_err "Tema já existe"
        return
    fi
    
    mkdir -p "$theme_path"
    print_msg "Tema criado: $theme_path"
    
    echo -n "Adicionar background? (s/N): "
    read -r add_bg
    
    if [[ "$add_bg" =~ ^[Ss]$ ]]; then
        echo -n "Caminho da imagem: "
        read -r bg_path
        
        if [ -f "$bg_path" ]; then
            mkdir -p "$HOME/.config/backgrounds"
            local bg_dest="$HOME/.config/backgrounds/${theme_name}_$(basename "$bg_path")"
            cp "$bg_path" "$bg_dest"
            
            cat > "$theme_path/background" << EOF
#!/bin/sh
feh --no-fehbg --bg-scale '$bg_dest'
EOF
            chmod +x "$theme_path/background"
            print_msg "Background adicionado!"
        else
            print_err "Imagem não encontrada"
        fi
    fi
    
    print_msg "Tema $theme_name criado!"
    print_msg "Adicione configurações em: $theme_path/"
}

# Criar background padrão
create_default_background() {
    mkdir -p "$SRC_DIR"
    cat > "$SRC_DIR/background" << 'EOF'
#!/bin/sh
# Background padrão - Edite o caminho da imagem
feh --no-fehbg --bg-scale '/home/usuario/.config/backgrounds/default.jpg'
EOF
    chmod +x "$SRC_DIR/background"
    print_msg "Background padrão criado em $SRC_DIR/background"
}

# Verificar estrutura
check_structure() {
    if [ ! -d "$THEMES_DIR" ]; then
        print_err "Diretório de temas não encontrado: $THEMES_DIR"
        exit 1
    fi
    
    if [ ! -d "$SRC_DIR" ]; then
        print_err "Diretório src não encontrado: $SRC_DIR"
        exit 1
    fi
    
    if [ ! -f "$SRC_DIR/background" ]; then
        create_default_background
    fi
}

# Menu principal
main_menu() {
    while true; do
        echo ""
        print_header "Theme Manager"
        echo -e "${GREEN}1)${NC} Aplicar tema"
        echo -e "${GREEN}2)${NC} Restaurar backup"
        echo -e "${GREEN}3)${NC} Background padrão"
        echo -e "${GREEN}4)${NC} Criar tema"
        echo -e "${GREEN}5)${NC} Sair"
        echo ""
        echo -n "Escolha: "
        read -r option
        
        case $option in
            1)
                # Lista os temas e pega o número
                list_themes
                local total=$?
                
                if [ $total -gt 0 ]; then
                    echo -n "Escolha (1-$total): "
                    read -r choice
                    
                    if [ "$choice" -ge 1 ] 2>/dev/null && [ "$choice" -le "$total" ]; then
                        apply_theme "${THEMES_LIST[$((choice-1))]}"
                    elif [ "$choice" != "0" ]; then
                        print_err "Opção inválida"
                    fi
                fi
                ;;
            2)
                restore_backups
                ;;
            3)
                restore_default_bg
                ;;
            4)
                create_theme
                ;;
            5)
                print_msg "Saindo..."
                exit 0
                ;;
            *)
                print_err "Opção inválida"
                ;;
        esac
    done
}

# Início
main() {
    check_structure
    main_menu
}

main

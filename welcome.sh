rainbow_effect() {
    local colors=('#ff6b6b' '#ffa94d' '#ffd43b' '#69db7c' '#4dabf7' '#b197fc' '#f783ac')
    local i=0
    while true; do
        for color in "${colors[@]}"; do
            echo -ne "\033[38;2;$(printf '%d %d %d' 0x${color:1:2} 0x${color:3:2} 0x${color:5:2})m║ $1\033[0m\033[K\r"
            sleep 0.15
        done
        ((i++))
        (( i > 2 )) && break
    done
    echo
}

echo ""
echo "  ╔═══════════════════════════════════════════╗"
echo "  ║                                           ║"
echo "  ║    💖  Meilės puslapis paruoštas!  💖    ║"
echo "  ║                                           ║"
echo "  ╚═══════════════════════════════════════════╝"
echo ""
rainbow_effect "🌐 https://railadeividas.github.io/automation/"
echo ""
echo "  Įvesk savo ir savo antros pusės vardą..."
echo "  ir pamatysi tikrą magiją! ✨"
echo ""

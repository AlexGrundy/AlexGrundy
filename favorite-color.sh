#!/bin/bash
echo "What's your favorite color"
read -r color

color=$(echo "$color" | tr '[:upper:]' '[:lower:]')

if [ -z "$color" ]; then
color="default"
fi

case "$color" in
    "red")
        color_code=31
        ;;
    "green")
        color_code=32
        ;;
    "yellow")
        color_code=33
        ;;
    "blue")
        color_code=34
        ;;
    "magenta")
        color_code=35
        ;;
    "cyan")
        color_code=36
        ;;
    "white")
        color_code=37
        ;;
    "pink")
        color_code=35
        ;;
    *)
        color_code=0
        echo "'$color' is not my favorite color :("
        exit 1
        ;;
    esac

echo -e "\033[${color_code}mWow, $color is my favorite color too!\033[0m"

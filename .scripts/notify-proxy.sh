var="$(networksetup -getcurrentlocation)"

if [[ $var == "UTFPR" ]]; then
    $(osascript -e 'display notification "Conectado" with title "Proxy UTFPR"')
fi

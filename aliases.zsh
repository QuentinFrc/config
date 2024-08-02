# Custom Aliases

echo "Successfully imported custom aliases"

# Webstorm IDE
ws() {
    if [ "$1" = "." ]; then
        param="$(pwd)"
    else
        param="$1"
    fi

    echo "Launching Webstorm in $param"
    # Websotrm without job details and output
    (webstorm64.exe "$@" > /dev/null 2>&1 &)
}

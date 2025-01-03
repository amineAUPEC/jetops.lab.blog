DEFAULT_DIRECTORY="../_posts"

# Use the first parameter as the directory, or the default if not provided
DIRECTORY="${1:-$DEFAULT_DIRECTORY}"
cd ${DIRECTORY}

DEFAULT_FILENAME="*.md"

FILENAME="${1:-$DEFAULT_FILENAME}"

cat -n ${FILENAME} | grep "\[" | grep -v "https" | grep -v "http" 




DEBUG=false

# Function to print debug messages
debug() {
    if [ "$DEBUG" = true ]; then
        cat -n ${FILENAME} | grep "\[" | grep -v "https" | grep -v "http" | grep -v "tag" | grep -v "md"

        echo "DEBUG: "
    fi
}
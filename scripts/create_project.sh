if [ -z "$1" ]; then
    echo "no project name as first argument"
else
    cp -r nano_template $1
fi

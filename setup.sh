shopt -s dotglob # too see hidden files and dirs over iteration

confirm() {
    read -rp "$1? [y/n] " response
    case "$response" in
        [yY][eE][sS]|[yY])
            true
            ;;
        *)
            false
            ;;
    esac
}

for file in .[!.]* 
do
    if [[ "$file" = ".git" || "$file" = ".gitmodules" || "$file" = ".gitignore" ]]; then
        continue
    fi

    original_file="$HOME/$file"
    new_file="$PWD/$file"
    create_symlink=true
    if [ -e "$original_file" ]; then
        if confirm "Do you want to replace $original_file file with $new_file?"; then 
            rm -r "$original_file" 
        else
            create_symlink=false
        fi
    fi
    if $create_symlink; then
        ln -s "$new_file" "$original_file" 
    fi
done 
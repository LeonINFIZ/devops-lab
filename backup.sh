#!/bin/bash

# Дата та час для назви архіву
timestamp=$(date +%Y-%m-%d_%H-%M-%S)

# Директорія для збереження бекапів
backup_dir="backups"

# Директорія, яку потрібно забекапити
source_dir="directory_1"

# Назва архіву
archive_name="${backup_dir}/backup_${timestamp}.tar.gz"

# Виключаємо файли з розширенням .dat
find "$source_dir" -name "*.dat" -exec rm {} \;

# Архівaція файлів
tar -czvf "$archive_name" "$source_dir"

echo "Бекап створено: $archive_name"

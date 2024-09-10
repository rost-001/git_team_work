#!/b
#!/bin/bash

echo "Введите путь исходной директории:"
read source_directory

echo "Введите путь целевой директории:"
read target_directory

if [ ! -d "$source_directory" ]; then
  echo "Исходная директория не найдена: $source_directory"
  exit 1
fi

if [ ! -d "$target_directory" ]; then
  echo "Целевая директория не найдена: $target_directory"
  exit 1
fi

if [ ! -r "$source_directory" ]; then
  echo "Исходная директория недоступна для чтения: $source_directory"
  exit 1
fi

if [ ! -w "$target_directory" ]; then
  echo "Целевая директория недоступна для записи: $target_directory"
  exit 1
fi

echo "Исходная и целевая директории существуют и доступны для операций."

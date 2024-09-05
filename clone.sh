echo "Clonando repositórios..."

declare -A submodules
submodules["ai-core"]="https://github.com/Luna-Virtual-Assistant/ai-core"
submodules["schedule-core"]="https://github.com/Luna-Virtual-Assistant/schedule-core"
submodules["luna"]="https://github.com/Luna-Virtual-Assistant/luna"
submodules["whatsapp-core"]="https://github.com/Luna-Virtual-Assistant/whatsapp-core"
submodules["history-core"]="https://github.com/Luna-Virtual-Assistant/history-core"
submodules["tts-core"]="https://github.com/Luna-Virtual-Assistant/tts-core"
submodules["sr-core"]="https://github.com/Luna-Virtual-Assistant/sr-core"
submodules["web-core"]="https://github.com/Luna-Virtual-Assistant/web-core"

for folder in "${!submodules[@]}"; do
  if [ -d "./$folder" ]; then
    echo "O diretório $folder já existe. Removendo o diretório..."
    rm -rf "./$folder"
  fi
  
  echo "Clonando repositório ${submodules[$folder]} em $folder..."
  git clone "${submodules[$folder]}" "./$folder"
  echo ""
done

echo "Clonagem concluída!"

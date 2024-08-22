#!/bin/bash

# Array com os nomes das pastas
folders=("luna" "history-core" "sr-core" "tts-core" "whatsapp-core" "schedule-core" "ai-core")

# Loop para percorrer cada pasta
for folder in "${folders[@]}"; do
  echo "Processando pasta: $folder"
  
  # Muda para a pasta desejada
  cd "./$folder" || { echo "Falha ao entrar na pasta $folder"; continue; }
  
  # Executa os comandos git
  git add .
  git stash
  git checkout main
  git pull origin main
  
  # Volta para a pasta original
  cd - || { echo "Falha ao voltar à pasta original"; exit 1; }
  
  echo "Concluído para $folder"
  echo ""
done


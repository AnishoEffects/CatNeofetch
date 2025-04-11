#!/bin/bash

# Caminho do diretório onde o script está
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Caminhos dos arquivos personalizados
NEOFETCH_SRC="$SCRIPT_DIR/neofetch"
CONFIG_SRC="$SCRIPT_DIR/config.conf"

# Caminhos de destino
DEST_BIN="/usr/local/bin/neofetch"
DEST_CONFIG="$HOME/.config/neofetch/config.conf"

echo "[*] Criando pasta de configuração, se necessário..."
mkdir -p "$(dirname "$DEST_CONFIG")"

echo "[*] Copiando neofetch modificado para $DEST_BIN..."
sudo cp "$NEOFETCH_SRC" "$DEST_BIN"
sudo chmod +x "$DEST_BIN"

echo "[*] Copiando config.conf personalizada para $DEST_CONFIG..."
cp "$CONFIG_SRC" "$DEST_CONFIG"

echo "[✓] Neofetch personalizado instalado com sucesso!"

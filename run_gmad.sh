#!/bin/bash

GMOD_BIN_DIR="$HOME/.local/share/Steam/steamapps/common/GarrysMod/bin"
GMAD_BIN="$GMOD_BIN_DIR/gmad_linux"
GMPUBLISH_BIN="$GMOD_BIN_DIR/gmpublish_linux"

OUTPUT_FOLDER="$(pwd)/out"
OUTPUT_FILE_NAME="ttt-weapon-collection.gma"
OUTPUT_PATH="$OUTPUT_FOLDER/$OUTPUT_FILE_NAME"

mkdir -p "$OUTPUT_FOLDER"

if [ -z "$1" ]; then
  echo 'first arg has to be either "build" or "publish"'
  exit 1
fi

case $1 in
"build")
  $GMAD_BIN create -folder "$(pwd)" -out "$OUTPUT_PATH"
  ;;
"publish")
  echo "$OUTPUT_PATH"
  LD_LIBRARY_PATH="$GMOD_BIN_DIR" $GMPUBLISH_BIN create -addon "$OUTPUT_PATH" -icon "$(pwd)/addon.jpg"
  ;;
esac


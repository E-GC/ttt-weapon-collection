#!/bin/bash

GMAD_BIN="$HOME/.local/share/Steam/steamapps/common/GarrysMod/bin/gmad_linux"
OUTPUT_FOLDER="$(pwd)/out"
mkdir -p "$OUTPUT_FOLDER"

$GMAD_BIN create -folder "$(pwd)" -out "$OUTPUT_FOLDER/addon.gmad"

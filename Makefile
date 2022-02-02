GMOD_BIN_DIR="${HOME}/.local/share/Steam/steamapps/common/GarrysMod/bin"
GMAD_BIN="${GMOD_BIN_DIR}/gmad_linux"
GMPUBLISH_BIN="${GMOD_BIN_DIR}/gmpublish_linux"

OUTPUT_FOLDER="$(shell pwd)/out"
OUTPUT_FILE_NAME="ttt-weapon-collection.gma"
OUTPUT_PATH="${OUTPUT_FOLDER}/${OUTPUT_FILE_NAME}"

create-output-folder:
	@mkdir -p "${OUTPUT_FOLDER}"

build: create-output-folder
	@${GMAD_BIN} create -folder "$(shell pwd)" -out "${OUTPUT_PATH}"

publish:
	@LD_LIBRARY_PATH="${GMOD_BIN_DIR}" ${GMPUBLISH_BIN} create -addon "${OUTPUT_PATH}" -icon "$(shell pwd)/addon.jpg"

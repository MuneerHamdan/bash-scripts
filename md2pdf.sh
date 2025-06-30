#!/bin/bash

# Check if input file is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <input-file.md>"
  exit 1
fi

INPUT_FILE="$1"
BASENAME="${INPUT_FILE%.*}"
OUTPUT_FILE="${BASENAME}.pdf"

# Run Pandoc with all desired settings
pandoc "$INPUT_FILE" -o "$OUTPUT_FILE" \
  --pdf-engine=tectonic \
  -V mainfont="Times New Roman" \
  -V fontsize=12pt \
  -V linestretch=2 \
  -V geometry=margin=1in \
  -V monofont="Courier New"

echo "Converted '$INPUT_FILE' to '$OUTPUT_FILE'"

firefox $OUTPUT_FILE

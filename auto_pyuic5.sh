#!/bin/bash

# Sucht rekursiv nach .ui-Dateien und verarbeitet sie
find . -name "*.ui" -print0 | while IFS= read -r -d $'\0' ui_file; do
    echo "-Converting: $(basename "${ui_file}")"

    # Ersetzt die .ui-Endung durch .py
    output_file="${ui_file%.ui}.py"

    pyuic5 -x "${ui_file}" -o "${output_file}"
done

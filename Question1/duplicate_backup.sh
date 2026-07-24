#!/bin/bash

SOURCE="./submissions"
BACKUP="./backup"

REPORT="report.txt"
ERRORS="errors.log"

mkdir -p "$BACKUP"

total=0
duplicate=0
backupcount=0

# Empty previous report and error log
> "$REPORT"
> "$ERRORS"

for file in "$SOURCE"/*
do
    if [ -f "$file" ]; then
        total=$((total + 1))

        hash=$(md5 -q "$file")

        if ls "$BACKUP"/* >/dev/null 2>&1; then
            found=0

            for backupfile in "$BACKUP"/*
            do
                backuphash=$(md5 -q "$backupfile")

                if [ "$hash" = "$backuphash" ]; then
                    found=1
                    break
                fi
            done

            if [ $found -eq 1 ]; then
                duplicate=$((duplicate + 1))
            else
                cp "$file" "$BACKUP"/ 2>>"$ERRORS"
                backupcount=$((backupcount + 1))
            fi

        else
            cp "$file" "$BACKUP"/ 2>>"$ERRORS"
            backupcount=$((backupcount + 1))
        fi
    fi
done

echo "Files Processed : $total" > "$REPORT"
echo "Duplicate Files : $duplicate" >> "$REPORT"
echo "Files Backed Up : $backupcount" >> "$REPORT"

echo "Done."

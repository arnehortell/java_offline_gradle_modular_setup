#!/bin/bash
set -e
read -p "Modulnamn: " NAME
DIR="modules/$NAME"
mkdir -p "$DIR/src/main/java/com/example/$NAME"

cat <<EOF > "$DIR/build.gradle"
plugins {
    id 'java-library'
}
EOF

cat <<EOF > "$DIR/src/main/java/com/example/$NAME/Example.java"
package com.example.$NAME;

public class Example {
    public static void hello() {
        System.out.println("Hello from $NAME!");
    }
}
EOF

echo "include ':$NAME'" >> settings.gradle
echo "Modul '$NAME' skapad i $DIR"

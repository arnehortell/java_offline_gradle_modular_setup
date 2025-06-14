#!/bin/bash
set -e
read -p "Master-projektnamn: " MASTER
mkdir -p "$MASTER"
cd "$MASTER"

mkdir -p project modules
echo "rootProject.name = '$MASTER'" > settings.gradle
echo "plugins { id 'java' }" > build.gradle

cat <<EOF > README.md
# $MASTER

Gradle masterprojekt. Använd 'create-gradle-subrepo.sh' för att skapa moduler.
EOF
echo "Gradle masterprojekt '$MASTER' är klart."

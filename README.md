# ☕ Java Modular Offline System (Gradle)

Detta projekt demonstrerar ett modulärt Java-system där:
- `main-project` är repo-master (med Gradle multiprojekt)
- `page1` är en körbar modul
- `text` är ett fristående block som byggs till `.jar`

## 📁 Struktur

```
main-project/
├── build.gradle
├── settings.gradle
├── page1/
│   ├── build.gradle
│   └── src/main/java/com/example/page1/Page1.java
└── text/
    ├── build.gradle
    └── src/main/java/com/example/blocks/TextComponent.java
```

## 🚀 Steg för att bygga och köra

1. Bygg text-blocket separat:
   ```bash
   cd text
   gradle build
   ```

2. Gå till main-projektet:
   ```bash
   cd ../
   gradle build
   ```

3. Kör `page1`:
   ```bash
   cd page1
   gradle run
   ```

## 🛠 Offline-läge

När text-blocket är byggt, refererar `page1` till `text-1.0.0.jar` via `files(...)`.
Du kan då bygga och köra `page1` utan nätverk.

## 🌐 Online-publicering (valfritt)

Lägg till plugin `maven-publish` och konfigurera `publishing {}`-block för att pusha till Artifactory.

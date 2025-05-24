#!/bin/bash
echo "📦 Cloning EmulatorJS..."
git clone https://github.com/emulatorjs/emulatorjs.git

echo "🐳 Building Docker container..."
docker compose up --build -d

echo "✅ Emulador disponible en: http://localhost:8080"

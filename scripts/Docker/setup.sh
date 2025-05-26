#!/bin/bash
echo "Cloning EmulatorJS"
#If there alredy is the Github file, it'll appear an error and continue with the Container building
git clone https://github.com/emulatorjs/emulatorjs.git

echo "Building Docker container"
docker compose up --build -d

echo "Avialable Emulator in: http://localhost:8080"

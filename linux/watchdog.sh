#!/bin/bash
SERVICES=("nginx" "docker" "ssh")
for service in "${SERVICES[@]}"; do
    if systemctl is-active --quiet $service; then
        echo "✅ $service"
    else
        echo "❌ $service down - redémarrage..."
        sudo systemctl start $service
    fi
done
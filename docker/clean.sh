#!/bin/bash
echo "🧹 Nettoyage Docker..."
docker system prune -af
docker volume prune -f
echo "✅ Terminé"
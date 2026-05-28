#!/bin/bash

ACTION=$1
INSTANCE=$2

if [ -z "$ACTION" ] || [ -z "$INSTANCE" ]; then
    echo "❌ Usage: ./ec2.sh start|stop <instance-id>"
    exit 1
fi

if [ "$ACTION" = "start" ]; then
    aws ec2 start-instances --instance-ids $INSTANCE
    echo "✅ Démarrage de l'instance $INSTANCE"
elif [ "$ACTION" = "stop" ]; then
    aws ec2 stop-instances --instance-ids $INSTANCE
    echo "🛑 Arrêt de l'instance $INSTANCE"
else
    echo "❌ Action inconnue. Utilise 'start' ou 'stop'"
    exit 1
fi
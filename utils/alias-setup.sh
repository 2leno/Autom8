#!/bin/bash
ALIAS_FILE="$HOME/.bashrc"

echo "" >> $ALIAS_FILE
echo "# Autom8 aliases" >> $ALIAS_FILE
echo "alias ll='ls -la'" >> $ALIAS_FILE
echo "alias ..='cd ..'" >> $ALIAS_FILE
echo "alias ...='cd ../..'" >> $ALIAS_FILE
echo "alias gs='git status'" >> $ALIAS_FILE
echo "alias ga='git add .'" >> $ALIAS_FILE
echo "alias gc='git commit -m'" >> $ALIAS_FILE
echo "alias gp='git push'" >> $ALIAS_FILE
echo "alias gl='git log --oneline --graph'" >> $ALIAS_FILE
echo "alias dps='docker ps'" >> $ALIAS_FILE
echo "alias dpa='docker ps -a'" >> $ALIAS_FILE
echo "alias dcu='docker-compose up -d'" >> $ALIAS_FILE
echo "alias dcd='docker-compose down'" >> $ALIAS_FILE

echo "✅ Alias ajoutés dans $ALIAS_FILE"
echo "Pour les activer : source $ALIAS_FILE"
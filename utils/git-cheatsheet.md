# Git Cheatsheet - Commandes essentielles

## 📦 Initialisation

| Commande | Utilité |
|----------|---------|
| `git init` | Crée un nouveau dépôt Git |
| `git clone <url>` | Copie un dépôt distant |

## 📝 Gestion des modifications

| Commande | Utilité |
|----------|---------|
| `git status` | Voir l'état des fichiers modifiés |
| `git diff` | Voir les différences ligne par ligne |
| `git add <fichier>` | Ajoute un fichier spécifique |
| `git add .` | Ajoute tous les fichiers modifiés |
| `git commit -m "message"` | Sauvegarde les changements |
| `git commit --amend` | Modifie le dernier commit |

## 📜 Historique

| Commande | Utilité |
|----------|---------|
| `git log` | Affiche l'historique complet |
| `git log --oneline` | Historique en une ligne par commit |
| `git log --graph --oneline` | Historique avec arbre graphique |
| `git log --since="2 days ago"` | Historique depuis 2 jours |

## 🌿 Branches

| Commande | Utilité |
|----------|---------|
| `git branch` | Liste les branches locales |
| `git branch -r` | Liste les branches distantes |
| `git branch -a` | Liste toutes les branches |
| `git branch <nom>` | Crée une nouvelle branche |
| `git checkout <nom>` | Bascule sur une branche |
| `git checkout -b <nom>` | Crée et bascule sur une nouvelle branche |
| `git merge <branche>` | Fusionne une branche dans la branche courante |
| `git branch -d <nom>` | Supprime une branche (locale) |

## 🔄 Synchronisation avec GitHub

| Commande | Utilité |
|----------|---------|
| `git remote -v` | Voir les dépôts distants |
| `git remote add origin <url>` | Lie le dépôt local à GitHub |
| `git pull origin <branche>` | Télécharge les changements distants |
| `git push origin <branche>` | Envoie les changements locaux |
| `git push -u origin <branche>` | Premier push (lie la branche) |

## 🗑️ Annulation et correction

| Commande | Utilité |
|----------|---------|
| `git reset --hard HEAD` | Annule tous les changements non commités |
| `git reset --soft HEAD~1` | Annule le dernier commit (garde les modifs) |
| `git reset --hard HEAD~1` | Annule le dernier commit (perd les modifs) |
| `git checkout -- <fichier>` | Annule les modifications d'un fichier |

## 📊 Rebase vs Merge

| Commande | Effet |
|----------|-------|
| `git merge <branche>` | Fusion avec commit dédié |
| `git rebase <branche>` | Réécrit l'historique (linéaire) |
| `git merge --ff-only` | Fusion uniquement si possible |

## 💡 Astuces utiles

```bash
# Voir l'arbre des commits
git log --oneline --graph --all --decorate

# Sauvegarde temporaire (stash)
git stash
git stash pop

# Modifier le message du dernier commit
git commit --amend -m "nouveau message"

# Supprimer une branche distante
git push origin --delete <nom-branche>

# Récupérer toutes les branches distantes
git fetch --all
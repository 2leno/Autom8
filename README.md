# Autom8 

Collection de scripts pour l'automatisation de serveurs Linux, Docker, AWS et monitoring.

---

## 📁 Structure du projet

| Dossier | Contenu |
|---------|---------|
| `linux/` | Scripts de monitoring, backup et watchdog |
| `docker/` | Dockerfile, docker-compose et nettoyage |
| `aws/` | Gestion EC2 et synchronisation S3 |
| `monitoring/` | Configuration Prometheus |
| `utils/` | Utilitaires (alias, installation outils) |

---

## 🛠️ Scripts disponibles

### Linux
| Script | Description |
|--------|-------------|
| `monitor.sh` | Surveillance RAM, CPU, disque |
| `backup.sh` | Sauvegarde automatique des dossiers |
| `watchdog.sh` | Auto‑réparation des services (nginx, docker, ssh) |

### Docker
| Fichier | Description |
|---------|-------------|
| `Dockerfile` | Build d'image personnalisée |
| `docker-compose.yml` | Lance PostgreSQL + Adminer |
| `clean.sh` | Nettoyage complet Docker |

### AWS
| Script | Description |
|--------|-------------|
| `ec2.sh` | Démarrage/arrêt d'instances EC2 |
| `s3.sh` | Synchronisation vers un bucket S3 |

### Monitoring
| Fichier | Description |
|---------|-------------|
| `prometheus.yml` | Configuration Prometheus |

### Utilitaires
| Script | Description |
|--------|-------------|
| `alias-setup.sh` | Ajoute des alias pratiques (ll, gs, ga, etc.) |
| `installs-devops-tools.sh` | Installe Docker, kubectl, Terraform |

---

## 🚀 Utilisation rapide

```bash
# Monitoring
./linux/monitor.sh

# Backup
./linux/backup.sh

# Watchdog
./linux/watchdog.sh

# Nettoyage Docker
./docker/clean.sh

# AWS EC2
./aws/ec2.sh start i-1234567890
./aws/ec2.sh stop i-1234567890

# AWS S3
./aws/s3.sh mon-bucket /chemin/vers/mon-dossier

# Alias bash
./utils/alias-setup.sh
source ~/.bashrc

# Installation outils DevOps
./utils/installs-devops-tools.sh
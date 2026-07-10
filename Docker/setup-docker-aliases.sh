#!/bin/bash

ALIAS_FILE="$HOME/.bashrc"

# Use ~/.zshrc if you're using Zsh
# ALIAS_FILE="$HOME/.zshrc"

cat <<'EOF' >> "$ALIAS_FILE"

# ==========================
# Docker Aliases
# ==========================

# Images
alias i="docker images"
alias di="docker images -f 'dangling=true'"
alias dip="docker image prune -f"
alias dri="docker image prune -a"

# Containers
alias c="docker ps"
alias ca="docker ps -a"
alias exited="docker ps -a -f 'status=exited'"
alias ds="docker start"
alias dst="docker stop"
alias drs="docker restart"
alias drm="docker rm"
alias drmc="docker container prune -f"

# Logs
alias logs="docker logs"
alias logsf="docker logs -f"

# Exec
alias dbash="docker exec -it"
alias dsh="docker exec -it"

# Docker Compose
alias up="docker compose up"
alias upd="docker compose up -d"
alias down="docker compose down"
alias restart="docker compose restart"
alias clog="docker compose logs -f"
alias cps="docker compose ps"

# Volumes
alias dv="docker volume ls"
alias dvp="docker volume prune -f"

# Networks
alias dn="docker network ls"
alias dnp="docker network prune -f"

# System
alias dspace="docker system df"
alias dclean="docker system prune -a"
alias dcleanall="docker system prune -a --volumes"
alias dversion="docker version"
alias dinfo="docker info"

# ==========================
EOF

echo "Docker aliases added to $ALIAS_FILE"

# Reload shell configuration
source "$ALIAS_FILE"

echo "Done! You can now use Docker aliases."

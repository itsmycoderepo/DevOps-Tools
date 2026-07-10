# Docker Aliases Cheat Sheet

A collection of useful Docker aliases for day-to-day development.

---

## Images

### List all images

```bash
alias i="docker images"
```

### List dangling images

```bash
alias di="docker images -f 'dangling=true'"
```

### Remove dangling images

```bash
alias dip="docker image prune -f"
```

### Remove unused images

```bash
alias dri="docker image prune -a"
```

---

## Containers

### List running containers

```bash
alias c="docker ps"
```

### List all containers

```bash
alias ca="docker ps -a"
```

### List stopped containers

```bash
alias exited="docker ps -a -f 'status=exited'"
```

### Start a container

```bash
alias ds="docker start"
```

### Stop a container

```bash
alias dst="docker stop"
```

### Restart a container

```bash
alias drs="docker restart"
```

### Remove a container

```bash
alias drm="docker rm"
```

### Remove all stopped containers

```bash
alias drmc="docker container prune -f"
```

---

## Logs & Shell

### View logs

```bash
alias logs="docker logs"
```

### Follow logs

```bash
alias logsf="docker logs -f"
```

### Open Bash shell

```bash
alias dbash="docker exec -it"
```

Example:

```bash
dbash <container_name> bash
```

### Open Sh shell

```bash
dexec <container_name> sh
```

or

```bash
alias dsh="docker exec -it"
```

Example:

```bash
dsh <container_name> sh
```

---

## Docker Compose

### Start services

```bash
alias up="docker compose up"
```

### Start services in detached mode

```bash
alias upd="docker compose up -d"
```

### Stop services

```bash
alias down="docker compose down"
```

### Restart services

```bash
alias restart="docker compose restart"
```

### View compose logs

```bash
alias clog="docker compose logs -f"
```

### List compose services

```bash
alias cps="docker compose ps"
```

---

## Volumes

### List volumes

```bash
alias dv="docker volume ls"
```

### Remove unused volumes

```bash
alias dvp="docker volume prune -f"
```

---

## Networks

### List networks

```bash
alias dn="docker network ls"
```

### Remove unused networks

```bash
alias dnp="docker network prune -f"
```

---

## System

### Docker disk usage

```bash
alias dspace="docker system df"
```

### Clean everything unused

```bash
alias dclean="docker system prune -a"
```

### Clean everything including volumes

```bash
alias dcleanall="docker system prune -a --volumes"
```

### Docker version

```bash
alias dversion="docker version"
```

### Docker information

```bash
alias dinfo="docker info"
```

---

## Quick Reference

| Alias | Command |
|-------|---------|
| `i` | `docker images` |
| `c` | `docker ps` |
| `ca` | `docker ps -a` |
| `exited` | `docker ps -a -f 'status=exited'` |
| `di` | `docker images -f 'dangling=true'` |
| `logs` | `docker logs` |
| `logsf` | `docker logs -f` |
| `dbash` | `docker exec -it` |
| `up` | `docker compose up` |
| `upd` | `docker compose up -d` |
| `down` | `docker compose down` |
| `dclean` | `docker system prune -a` |
| `dspace` | `docker system df` |

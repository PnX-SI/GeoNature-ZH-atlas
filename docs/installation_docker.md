## Installation de docker sur un système Debian

[Lien vers la documentation pour installer Docker](https://docs.docker.com/engine/install/debian/)

## Build d'image docker en local

!!! warning "Nécessite de cloner le projet en amont"

[Lien vers la documentation pour cloner le projet](/installation/#cloner-le-projet)

<div class="termy">

```console
docker build -t geonature-zones-humides-atlas .

---> 100%
```

</div>

## Exécuter l'image docker locale en ligne de commande

!!! warning "Nécessite d'avoir buildé l'image en local"

<div class="termy">

```console
docker run --rm -it -p 3000:3000 geonature-zones-humides-atlas npm run start_local

---> 100%
```

</div>

## Exécuter l'image docker a l'aide d'un docker compose

!!! note "Pour l'image de production, cette étape ne nécessite ni d'avoir récupéré le projet ni d'avoir buildé l'image en local"


- Créer un fichier  `docker-compose.yml`.

  ```yaml
  version: '3.8'
  services:
    atlas-zh:
      # image: geonature-zones-humides-atlas # local image
      image: ghcr.io/pnx-si/atlas-zh:main # prod image
      volumes:
        - ./public:/app/public 
        - ./data:/app/data # To modify config.yml
        # If you modify something in data directory you need to restart docker container
      ports:
        - "3000:3000"
      command: npm run start_local
  ```

Si l'image utilisée est l'image de production :

- Lancer la commande `docker compose pull`

Pour lancer le projet :

```bash
docker compose up # -d pour faire tourner le projet en arrière-plan
```
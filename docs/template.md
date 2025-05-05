Vous pouvez utiliser un template de projet pour commencer, car il comprend une grande partie de la configuration initiale.

---

Gitlab: <a href="https://gitlab.com/natural-solutions/geonature/zones-humides/atlas-template" class="external-link" target="_blank">https://gitlab.com/natural-solutions/geonature/zones-humides/atlas-template</a>

---

Le template du projet aura toujours une configuration très orientée que vous devrez mettre à jour et adapter à vos propres besoins, mais il peut constituer un bon point de départ pour votre projet.

Si vous souhaitez utiliser le template comme point de départ, veuillez suivre les étapes suivantes :

#### Prérequis

Pour pouvoir utiliser le template, vous devez avoir installé [Docker](https://docs.docker.com/engine/install/){.external-link target=\_blank} et [Docker Compose](https://docs.docker.com/compose/install/){.external-link target=\_blank} sur votre système.

#### Téléchargez et extrayez le dossier contenant tous les fichiers

```bash
curl https://gitlab.com/natural-solutions/geonature/zones-humides/atlas-template/-/archive/master/atlas-template-master.tar.gz | tar -xz
cd atlas-template-master
```

#### Modifier la configuration

Pour des informations sur la façon de configurer l'application, vous pouvez aller [ici](/configuration)

```bash
vim ./data/config.yml
```

#### Initialiser et ajouter le dépôt remote créé dans gitlab

```bash
git init
git remote add origin [depot-remote]
git commit -m "chore: initial commit"
git push origin main
```

#### Démarrer le projet avec `node`

```bash
docker-compose up -d --build atlas
```
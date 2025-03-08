# Streamlit avec Docker

[Tuto Youtube](https://www.youtube.com/watch?v=W1ickBSX63w) - 00:38:00

Recours à docker pour partager une application :

- Installer [docker desktop](https://docs.docker.com/desktop/setup/install/windows-install/) sur l'ordinateur qui utilise l'OS Windows
- Installer l'extension Docker sur VSC
- Test de l'application
- Création d'un fichier requirements.txt dans le répertoire où se situe le fichier python du lancement de l'application, avec l'instruction suivante dans le terminal :

  ```
  pip freeze > requirements.txt
  ```

- Vérifier s'il n'y a pas de conflit de librairies avec l'instruction suivante dans le terminal :

  ```
  pip install -r requirements.txt
  ```

- Création du fichier 'Dockerfile' (respecter la casse) **dans le répertoire principal** pour construire une image de base Docker (images de base open source sur le docker hub) : **ce fichier ne doit pas être dans le répertoire où se situe fichier python pour lancer l'application**. Des commentaires ont été insérés sur les instructions opérés dans ce fichier.

- Saisir dans le terminal l'instruction suivante, pour constuire l'image, **sans oublier l'espace suivi du point à la fin de l'instruction** permettant d'indiquer que le fichier Dockerfile est dans le répertoire principal :

  ```
  docker build -t nom_image .
  ```

- Vérifier que l'image a été créée, en saisissant dans le terminal :

  ```
  docker image ls
  ```

- Installation du conteneur en saissisant dans le terminal :

  ```
  docker run --publish 8501:8501 --detach --name nom_conteneur nom_image
  ```

  Explication de certains éléments de l'instruction ci-dessus :

  - n° localhost attribué à l'application streamlit (généralement n° 8501)
  - "nom_conteneur" : nom à attribuer au conteneur
  - "nom_image" : nom attribué à l'image

- Vérifier que le conteneur a bien été créé en saissant dans le terminal :

  ```
  docker container ls
  ```

- Vérifier si l'application fonctionne en saisissant dans l'URL d'une page web :
  ```
  http://localhost:8501/
  ```

Date : 08/03/25

---

# Tutoriel de déploiement d'une application Streamlit sur OVH

## Introduction

Dans ce tutoriel, nous allons déployer une application Streamlit sur OVH en utilisant Docker et AI Deploy.

## Étape 1 : Création d'une image Docker

### Créer un fichier `Dockerfile`

Ce fichier définit comment votre image Docker est construite. Créez-le dans le répertoire de votre projet.

### Créer un fichier `requirements.txt`

Assurez-vous que toutes les dépendances nécessaires sont listées dans ce fichier, y compris Streamlit.

### Construire l'image Docker

Exécutez la commande suivante dans votre terminal pour construire l'image.

## Étape 2 : Push de l'image sur Docker Hub

### Créer un compte Docker Hub

Si vous n'avez pas déjà un compte, créez-en un pour stocker vos images Docker.

### Taguer et pusher l'image

## Étape 3 : Déploiement avec OVH AI Deploy

### Accéder à OVHcloud Control Panel

Connectez-vous à votre compte OVH et accédez à la section AI Deploy.

### Créer un nouveau déploiement

- Sélectionnez Docker comme méthode de déploiement.
- Entrez l'URL de votre image Docker sur Docker Hub.
- Configurez les ressources (CPU, RAM) selon vos besoins.
- Lancez le déploiement.

### Accéder à votre application

Une fois le déploiement terminé, vous obtiendrez une URL pour accéder à votre application Streamlit.

## Conclusion

Ce tutoriel vous a guidé à travers le processus de déploiement d'une application Streamlit sur OVH en utilisant Docker et AI Deploy. Vous pouvez maintenant mettre en ligne vos applications de manière sécurisée et efficace.

---

# Installation des dépendances et de l'environnement virtuel avec UV

**Attention, pour jupyter notebook, UV n'est pas adapté : installé au préalable l'environnement virtuel avec la fonctionnalité de VSC puis installer par la suite les dépendances avec UV**

**Création du projet à saisir dans le terminal** :

```
uv init
```

**Création d'un environnement virtuel, à saisir dans le terminal** :

```
uv venv
```

**Pour spécifier une version de python** :

```
uv venv --version 3.12
```

Pour créer une librairie

```
uv add nom_librairie
```

Création et mise à jour du fichier requirements.txt

```
pip freeze > requirements.txt
```

Pour vérifier s'il n'y a pas de conflit de librairies

```
pip install -r requirements.txt
```

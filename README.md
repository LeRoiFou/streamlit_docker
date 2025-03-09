# Streamlit avec Docker

[Tuto Youtube](https://www.youtube.com/watch?v=W1ickBSX63w) - 00:38:00

Recours à docker pour partager une application :

## 1. Docker desktop

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

**_<font color='yellow'>Si docker ne se connecte pas, relancer l'application installée sur l'ordinateur, Docker Desktop</font>_**

## 2. Docker hub

- Se connecter sur le site [Docker Hub](https://hub.docker.com/)
- Sélectionner "Create a Repository" et donner un nom du repository puis appuyer sur 'Create'
- Retourner sur VSC et saisir l'instruction suivant dans le terminal, afin 'taguer' (copier) l'image :

  ```
  docker image tag nom_image leroifou/nom_repository:v1
  ```

  - _leroifou : nom de connexion sur Docker Hub (comme pour gitHub)_
  - _v1 : version 1_

- Toujours dans le terminal, 'pusher' (envoyer) l'image vers Docker Hub :

  ```
  docker push leroifou/nom_repository:v1
  ```

- Vérifier sur Docker Hub si l'image a bien été transféré sur le site

- En listant les images avec l'instruction suivante, on s'aperçoit qu'on a deux images : une image en local, et une image mise sur Docker Hub

  ```
  docker image ls
  ```

- Supprimer l'image conservée en local (prend de la mémoire) :

  ```
  docker image rm nom_image
  ```

- Arrêter l'exécution du container :

  ```
  docker stop nom_container
  ```

- Puis supprimer le container conservé en local :

  ```
  docker container rm nom_container
  ```

- Vérifier que l'image et le container en local ont bien été supprimés :

  ```
  docker image ls
  ```

  ```
  docker container ls
  ```

- Il n'est plus possible de se connecter avec l'instruction suivante sur la page web, car l'image et le container locaux ont été supprimés :

  ```
  http://localhost:8501/
  ```

- Pour lancer l'application, saisir dans le terminal l'instruction suviante :

  ```
  docker run --publish 8501:8501 --detach --name nomx leroifou/nom_repository:v1
  ```

  - _nomx : nom donné_

- Puis saisir cette fois-ci sur une page @, au niveau de l'URL :
  ```
  http://localhost:8501/
  ```

Cela permet de créer un nouveau container et une nouvelle image, qui peut être utilisé sur un autre ordinateur, permettant de partager l'application sans recourir à un exécutable qu'on pourrait créer avec la librairie cx_freeze

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

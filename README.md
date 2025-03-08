# Streamlit avec Docker

[Tuto Youtube](https://www.youtube.com/watch?v=W1ickBSX63w) - 00:06:50

Recours à docker pour partager une application

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

**Pour synchroniser l'environnement avec le nouveau fichier requirements.txt**

```
uv pip sync requirements.txt

```

Installation des dépendances :

```
uv add polars
```

Synchronisation de l'environnement :

```
uv sync
```

Qualité du code :

```
uvx ruff check # Analyse du colde
uvx ruff format # Formatage du code
uvx pytest # Lance les tests
```

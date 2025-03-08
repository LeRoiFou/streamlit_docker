# Streamlit avec Docker

[Tuto Youtube](https://www.youtube.com/watch?v=W1ickBSX63w) - 00:06:50

Recours à docker partager une application

Date : 08/03/25

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

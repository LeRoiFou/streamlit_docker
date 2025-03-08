# Sélection de l'image de base (ici python + version)
# Hyperlien présent sur le mot 'python' permettant d'accéder directement
# sur docker hub mettant à disposition des images de base Python
# Saisir la version python utilisée (terminal : python --version)
FROM python:3.12

# Traitements à opérer dans le répertoire app
WORKDIR /app 

# Ajout d'un sous-répertoire dans le répertoire ciblé ci-avant
ADD app/ .

# Installation de tous les packages de l'application à fonctionner pour le 
# partage de cette application à partir du fichier requirements.txt qui
# doit être obligatoire positionné dans le répertoire app
RUN pip install -r requirements.txt

# Port sur lequel le conteneur sera configuré : ce n° port s'affiche lorsqu'on
# lance le script streamlit dans le terminal : 
# streamlit run chemin_et_nom_du_fichier.py
EXPOSE 8501

# Exécution du conteneur à partir du fichier python qui va lancer l'application :
# "Streamlit" : librairie qui va exécuter l'application
# "run" : lancement de l'application
# "app.py" : fichier python pour lancer l'application
CMD ["streamlit", "run", "app.py"]

# Puis saisir dans le terminal pour construire l'image avec l'instruction
# NE PAS OUBLIER L'ESPACE SUIVI DU POINT A LA FIN DE L'INSTRUCTION !
# docker build -t nom_image .

# Et pour vérifier que l'image a été créée, saisir dans le terminal :
# docker image ls

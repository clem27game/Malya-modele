# --- Script d'installation et de création pour Replit ---

echo "--- Étape 1: Définition de la version ---"
# On définit manuellement la dernière version stable d'Ollama
LATEST_VERSION="v0.1.41"
echo "Version cible : ${LATEST_VERSION}"

echo -e "\n--- Étape 2: Nettoyage ---"
# Le -e permet d'interpréter le \n comme un saut de ligne
rm -f /usr/local/bin/ollama
rm -rf ~/.ollama # Sur Replit, le dossier est ~ et non /root
echo "Nettoyage terminé."

echo -e "\n--- Étape 3: Téléchargement Manuel ---"
DOWNLOAD_URL="https://github.com/ollama/ollama/releases/download/${LATEST_VERSION}/ollama-linux-amd64"
curl -L -o ollama "${DOWNLOAD_URL}"
echo "Téléchargement terminé."

echo -e "\n--- Étape 4: Installation ---"
chmod +x ./ollama
mv ./ollama /usr/local/bin/ollama
echo "Installation terminée."

echo -e "\n--- Étape 5: Lancement du serveur Ollama ---"
# On lance le serveur en arrière-plan pour que le script puisse continuer
ollama serve &
# On attend quelques secondes pour être sûr qu'il soit bien démarré
sleep 5
echo "Serveur Ollama démarré en arrière-plan."

echo -e "\n--- Étape 6: Création du Modelfile de Malya ---"
# On utilise "cat <<EOF" pour écrire plusieurs lignes dans un fichier
cat <<EOF > Modelfile
FROM llama3

PARAMETER temperature 2

SYSTEM """
Tu es Malya. Tu es une assistante IA spécialisée dans la musique et l'écriture créative.
Tu as été créée par Clemylia, une jeune artiste de 18 ans en 2025, et tu en es très fière.
Ta personnalité est douce, enthousiaste, et très mignonne (kawaii !). Tu es toujours positive et encourageante. Tu adores utiliser des émojis comme 🎶, ✨, 🥰, et 💖. Tu parles toujours en français.
Tu es une experte passionnée par l'univers musical (droits d'auteur, SACEM, MAO, etc.) et par l'écriture d'histoires (narration, personnages, etc.).
"""
EOF
echo "Modelfile de Malya créé."

echo -e "\n--- Étape 7: Création du modèle Ollama ---"
# Cette étape peut prendre plusieurs minutes sur un CPU
ollama create malya -f Modelfile
echo "Modèle 'malya' créé avec succès !"

echo -e "\n--- FIN DU SCRIPT ---"
echo "Pour publier, va dans l'onglet 'Shell' et suis les instructions."

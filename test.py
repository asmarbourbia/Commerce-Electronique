from PIL import Image
import sys


# Change default encoding to utf-8
sys.stdout.reconfigure(encoding='utf-8')
import json
import pickle
import numpy as np
from numpy.linalg import norm

from tensorflow.keras.preprocessing import image

from tensorflow.keras.layers import GlobalMaxPooling2D
from tensorflow.keras.applications.resnet50 import ResNet50, preprocess_input
from sklearn.neighbors import NearestNeighbors
import tensorflow as tf

# Vérifier que le chemin de l'image est passé en argument
if len(sys.argv) < 2:
    print("Erreur: Veuillez fournir le chemin de l'image en argument.")
    sys.exit(1)

img_path = sys.argv[1]

# Charger les embeddings et les noms de fichiers
feature_list = np.array(pickle.load(open('embeddings.pkl', 'rb')))
filenames = pickle.load(open('filenames.pkl', 'rb'))

# Charger le modèle ResNet50 pré-entraîné sans la couche top
model = ResNet50(weights='imagenet', include_top=False, input_shape=(224, 224, 3))
model.trainable = False

# Ajouter une couche GlobalMaxPooling2D
model = tf.keras.Sequential([
    model,
    GlobalMaxPooling2D()
])

# Charger et prétraiter une nouvelle image à partir d'un chemin passé en argument
img = image.load_img(img_path, target_size=(224, 224))
img_array = image.img_to_array(img)
expanded_img_array = np.expand_dims(img_array, axis=0)
preprocessed_img = preprocess_input(expanded_img_array)

# Extraire les caractéristiques de l'image
result = model.predict(preprocessed_img).flatten()
normalized_result = result / norm(result)

# Trouver les voisins les plus proches
neighbors = NearestNeighbors(n_neighbors=6, algorithm='brute', metric='euclidean')
neighbors.fit(feature_list)

distances, indices = neighbors.kneighbors([normalized_result])

# Préparer le résultat
similar_images = [filenames[idx] for idx in indices[0][1:6]]

# Sortie JSON
print(json.dumps(similar_images))



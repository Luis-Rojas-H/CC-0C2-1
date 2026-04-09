### Enlaces para la semana 3

#### 1. Perceptrón y MLP en PyTorch

* **PyTorch - `nn.Linear`**  
  Capa base para implementar un perceptrón y también las transformaciones lineales internas de un MLP. ([PyTorch Linear][38])

* **PyTorch - `nn.Sequential`**  
  Contenedor simple para apilar capas lineales y activaciones, útil para construir un MLP básico de forma clara. ([PyTorch Sequential][39])

* **PyTorch - `nn.ReLU`**  
  Activación no lineal muy usada en MLP para introducir capacidad de modelar relaciones no lineales. ([PyTorch ReLU][40])

#### 2. Función de pérdida y retropropagación

* **PyTorch - `nn.CrossEntropyLoss`**  
  Función de pérdida estándar para clasificación multiclase; trabaja directamente con logits. ([PyTorch CrossEntropyLoss][41])

* **PyTorch Tutorial - A Gentle Introduction to `torch.autograd`**  
  Introducción oficial a `autograd`, el motor de diferenciación automática que permite la retropropagación. ([PyTorch Autograd Tutorial][42])

* **PyTorch - Autograd mechanics**  
  Explicación más técnica de cómo PyTorch construye el grafo y calcula gradientes con la regla de la cadena. ([PyTorch Autograd Mechanics][43])

* **PyTorch Tutorial - Optimizing Model Parameters**  
  Tutorial oficial del ciclo de entrenamiento: forward, cálculo de pérdida, backward y optimizer step. ([PyTorch Optimization Tutorial][44])

#### 3. Texto como entrada: de documentos a vectores

* **scikit-learn - `CountVectorizer`**  
  Convierte documentos de texto en una matriz de conteos de tokens; ideal para un baseline bag-of-words. ([scikit-learn CountVectorizer][45])

* **scikit-learn - Feature extraction from text**  
  Explica cómo `CountVectorizer` realiza tokenización y conteo para producir representaciones dispersas de texto. ([scikit-learn Feature Extraction][46])

#### 4. Extensión opcional para conectar con NLP moderno

* **PyTorch - `nn.Embedding`**  
  Capa para convertir índices de tokens en vectores densos; útil como siguiente paso después de bag-of-words. ([PyTorch Embedding][47])

* **PyTorch Tutorial - Word Embeddings: Encoding Lexical Semantics**  
  Tutorial clásico para entender embeddings de palabras y su uso en NLP. ([PyTorch Word Embeddings Tutorial][48])

[38]: https://docs.pytorch.org/docs/stable/generated/torch.nn.Linear.html "Linear - PyTorch documentation"
[39]: https://docs.pytorch.org/docs/stable/generated/torch.nn.Sequential.html "Sequential - PyTorch documentation"
[40]: https://docs.pytorch.org/docs/stable/generated/torch.nn.ReLU.html "ReLU - PyTorch documentation"
[41]: https://docs.pytorch.org/docs/stable/generated/torch.nn.CrossEntropyLoss.html "CrossEntropyLoss - PyTorch documentation"
[42]: https://docs.pytorch.org/tutorials/beginner/blitz/autograd_tutorial.html "A Gentle Introduction to torch.autograd"
[43]: https://docs.pytorch.org/docs/stable/notes/autograd.html "Autograd mechanics - PyTorch documentation"
[44]: https://docs.pytorch.org/tutorials/beginner/basics/optimization_tutorial.html "Optimizing Model Parameters - PyTorch Tutorials"
[45]: https://scikit-learn.org/stable/modules/generated/sklearn.feature_extraction.text.CountVectorizer.html "CountVectorizer - scikit-learn documentation"
[46]: https://scikit-learn.org/stable/modules/feature_extraction.html "Feature extraction from text - scikit-learn documentation"
[47]: https://docs.pytorch.org/docs/stable/generated/torch.nn.Embedding.html "Embedding - PyTorch documentation"
[48]: https://docs.pytorch.org/tutorials/beginner/nlp/word_embeddings_tutorial.html "Word Embeddings: Encoding Lexical Semantics - PyTorch Tutorials"

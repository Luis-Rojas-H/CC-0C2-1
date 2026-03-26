### Docker.md

Guía rápida para ejecutar la **Semana 1** en un entorno reproducible con Docker.

#### 1. Estructura recomendada

```text
NLP/
├── Dockerfile
├── requirements-base.txt
├── requirements-optional.txt
├── Docker.md
├── verify_env.ipynb
├── .dockerignore
└── Semana1/
    ├── Cuaderno1-MCC.ipynb
    └── Enlaces.md
```

> La carpeta puede llamarse `NLP`, pero el **nombre de la imagen Docker** debe ir en minúsculas.  
> Usa `nlp` como etiqueta de la imagen.

#### 2. Construir la imagen Docker

#### Windows (Docker Desktop / PowerShell)

```powershell
cd C:\ruta\a\NLP
docker build -t nlp .
```

#### Linux/macOS/Git Bash

```bash
cd /ruta/a/NLP
docker build -t nlp .
```

#### Solo base (sin paquetes opcionales)

```bash
docker build --build-arg INSTALL_OPTIONAL=false -t nlp .
```

#### 3. Ejecutar el contenedor y acceder a JupyterLab

##### 3.1 Montar toda la carpeta del curso (`NLP`)

**Linux/macOS/Git Bash**
```bash
docker run -it --rm \
  -p 8888:8888 \
  -v "$(pwd)":/workspace \
  nlp
```

**Windows PowerShell**
```powershell
docker run -it --rm `
  -p 8888:8888 `
  -v "${PWD}:/workspace" `
  nlp
```

**Windows CMD**
```bat
docker run -it --rm -p 8888:8888 -v %cd%:/workspace nlp
```

##### 3.2 Montar solo `Semana1`

**Linux/macOS/Git Bash**
```bash
docker run -it --rm \
  -p 8888:8888 \
  -v /ruta/a/NLP/Semana1:/workspace \
  nlp
```

**Windows PowerShell**
```powershell
docker run -it --rm `
  -p 8888:8888 `
  -v "C:\ruta\a\NLP\Semana1:/workspace" `
  nlp
```

#### 4. Cómo usar los dos archivos de requirements

##### Opción A. Solo base
Instala el entorno principal del curso:

```bash
pip install -r requirements-base.txt
```

##### Opción B. Base + opcional
Agrega herramientas para retrieval, fine-tuning eficiente, demos y servicios:

```bash
pip install -r requirements-base.txt
pip install -r requirements-optional.txt
```

##### Opción C. En una sola línea

```bash
pip install -r requirements-base.txt -r requirements-optional.txt
```

#### 5. Qué instala cada archivo

- `requirements-base.txt`: núcleo del entorno, ciencia de datos, PyTorch CPU, NLP clásico y moderno, `transformers`, `datasets`, `evaluate`, `spaCy`, `NLTK` y utilidades generales.
- `requirements-optional.txt`: retrieval, embeddings, PEFT, alignment ligero, multimodalidad, demos y servicios simples.

#### 6. Qué usar para Semana 1

Para **Semana 1** puedes trabajar de dos formas:

- **Con Docker**: construye la imagen y ya tendrás el entorno listo.
- **Con pip local**: instala al menos `requirements-base.txt`.

Por ejemplo `Cuaderno1-MCC.ipynb` y `Enlaces.md` quedan dentro de `Semana/`.

#### 7. Validar el entorno

Abre `verify_env.ipynb` en JupyterLab y ejecuta todas las celdas.

La validación comprueba, como mínimo:

- Versión de Python
- Imports principales
- Disponibilidad de `torch`
- Carga de tokenizer de Hugging Face
- Carga de un dataset pequeño
- Funcionamiento básico de spaCy y NLTK.

#### 8. Notas importantes

- El error que viste con `NLP` ocurre porque las **etiquetas de imagen Docker deben ir en minúsculas**.  
  Por eso aquí usamos `nlp`.
- La carpeta del proyecto sí puede llamarse `NLP`.
- No se incluye `torchtext`.
- Si cambias dependencias, reconstruye la imagen:

```bash
docker build --no-cache -t nlp .
```

#### 9. Acceso a JupyterLab

Al ejecutar el contenedor aparecerá una URL similar a:

```text
http://127.0.0.1:8888/lab?token=...
```

Ábrela en tu navegador.

#### 10. Problemas comunes

##### Puerto 8888 ocupado
Usa otro puerto en el host:

```bash
docker run -it --rm -p 8890:8888 -v "$(pwd)":/workspace nlp
```

##### spaCy no descarga el modelo
Dentro del contenedor:

```bash
python -m spacy download es_core_news_sm
```

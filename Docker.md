### Instrucciones Docker para CC-0C2

Guía práctica para construir y ejecutar el entorno reproducible del curso con Docker usando la imagen **`entorno_nlp`**.

> En este proyecto la carpeta del curso se llama **`CC-0C2`**, pero la **imagen Docker** se construirá con el nombre **`entorno_nlp`**.

#### 1. Estructura recomendada

```text
CC-0C2/
├── Dockerfile
├── requirements-base.txt
├── requirements-opcional.txt
├── Docker.md
├── verificacion_entorno.ipynb
├── .dockerignore
└── Semana1/
    ├── Cuaderno1-CC0C2.ipynb
    └── Enlaces.md
```

#### 2. Qué hace este Dockerfile

El `Dockerfile` de este proyecto:

- usa `python:3.11-slim`
- copia `requirements-base.txt` y `requirements-opcional.txt`
- instala primero la base y luego, si corresponde, los paquetes opcionales
- descarga recursos de `nltk`
- descarga el modelo `es_core_news_sm` de `spaCy`
- expone `JupyterLab` en el puerto `8891`

#### 3. Construir la imagen con bash

##### 3.1 Entrar a la carpeta del proyecto

**Linux/macOS/Git Bash**

```bash
cd /ruta/a/CC-0C2
ls
```

Debes ver al menos:

```text
Dockerfile
requirements-base.txt
requirements-opcional.txt
```

##### 3.2 Construir primero solo la base

Conviene validar primero el entorno principal, sin paquetes opcionales:

```bash
docker build --no-cache --build-arg INSTALL_opcional=false -t entorno_nlp .
```

##### 3.3 Construir la imagen completa

Si el paso anterior termina bien, construye base + opcional:

```bash
docker build --no-cache --build-arg INSTALL_opcional=true -t entorno_nlp .
```

##### 3.4 Verificar que la imagen exista

```bash
docker images | grep entorno_nlp
```

#### 4. Ejecutar el contenedor desde bash

##### 4.1 Linux/macOS/Git Bash

```bash
docker run -it --rm \
  --name entorno_nlp_container \
  -p 8891:8891 \
  -v "$(pwd)":/workspace \
  entorno_nlp
```

##### 4.2 Windows PowerShell

```powershell
docker run -it --rm `
  --name entorno_nlp_container `
  -p 8891:8891 `
  -v "${PWD}:/workspace" `
  entorno_nlp
```

##### 4.3 Windows CMD

```bat
docker run -it --rm --name entorno_nlp_container -p 8891:8891 -v %cd%:/workspace entorno_nlp
```

#### 5. Abrir JupyterLab

Al iniciar el contenedor, abre en el navegador:

```text
http://localhost:8891/lab
```

Si Jupyter muestra token, cópialo desde los logs del contenedor.

#### 6. Paso a paso con Docker Desktop

##### 6.1 Construir la imagen

Abre Docker Desktop y usa la terminal integrada, o una terminal normal con Docker Desktop iniciado.

Ejecuta primero la build base:

```bash
docker build --no-cache --build-arg INSTALL_opcional=false -t entorno_nlp .
```

Si termina bien, construye la imagen completa:

```bash
docker build --no-cache --build-arg INSTALL_opcional=true -t entorno_nlp .
```

##### 6.2 Ejecutar la imagen desde la interfaz

En **Images**, busca `entorno_nlp` y pulsa **Run**.

Completa los campos así:

```text
Container name: cc-0c2-entorno
Host port: 8891
Host path: C:\Users\TU_USUARIO\Documents\CC-0C2
Container path: /workspace
Environment variables: dejar vacío
```

Notas:

- `entorno_nlp` es el nombre de la imagen.
- `cc-0c2-entorno` es solo un ejemplo de nombre del contenedor.
- También puedes usar `entorno_nlp_container` como nombre del contenedor.

Después abre:

```text
http://localhost:8891/lab
```

#### 7. Cómo usar los dos archivos de requirements fuera de Docker

##### Opción A. Solo base

```bash
pip install -r requirements-base.txt
```

##### Opción B. Base + opcional

```bash
pip install -r requirements-base.txt
pip install -r requirements-opcional.txt
```

##### Opción C. En una sola línea

```bash
pip install -r requirements-base.txt -r requirements-opcional.txt
```

#### 8. Qué instala cada archivo

- `requirements-base.txt`: núcleo del entorno, ciencia de datos, PyTorch CPU, NLP clásico y moderno, `transformers`, `datasets`, `evaluate`, `spaCy`, `NLTK` y utilidades generales.
- `requirements-opcional.txt`: retrieval, embeddings, PEFT, alignment ligero, multimodalidad, demos y servicios simples.

#### 9. Recomendación práctica

No construyas de una sola vez con los opcionales hasta confirmar que la base ya funciona.

El `Dockerfile` ya separa ambas fases con `INSTALL_opcional`, así que conviene aprovecharlo:

1. construye primero con `INSTALL_opcional=false`
2. si funciona, construye con `INSTALL_opcional=true`

Si la build base pasa y la build opcional falla, entonces el siguiente conflicto estará en `requirements-opcional.txt`, no en el entorno principal.

#### 10. Validar el entorno

Abre `verificacion_entorno.ipynb` en JupyterLab y ejecuta todas las celdas.

La validación debería comprobar, como mínimo:

- versión de Python
- imports principales
- disponibilidad de `torch`
- carga de tokenizer de Hugging Face
- carga de un dataset pequeño
- funcionamiento básico de spaCy y NLTK

#### 11. Problemas comunes

##### El build sigue fallando

Reconstruye sin caché para evitar reutilizar capas antiguas:

```bash
docker build --no-cache --build-arg INSTALL_opcional=false -t entorno_nlp .
```

Si la build base funciona y la build completa falla, revisa entonces `requirements-opcional.txt`.

##### El puerto 8891 está ocupado

Usa otro puerto del host, por ejemplo `8892`:

```bash
docker run -it --rm -p 8892:8891 -v "$(pwd)":/workspace entorno_nlp
```

En ese caso abre:

```text
http://localhost:8892/lab
```

##### spaCy no descarga el modelo

Dentro del contenedor:

```bash
python -m spacy download es_core_news_sm
```

##### Quieres eliminar el warning `JSONArgsRecommended`

No es obligatorio, pero se puede mejorar cambiando el `CMD` del `Dockerfile` a formato JSON.

#### 12. Comandos mínimos recomendados

```bash
docker build --no-cache --build-arg INSTALL_opcional=false -t entorno_nlp .
docker build --no-cache --build-arg INSTALL_opcional=true -t entorno_nlp .
docker run -it --rm --name entorno_nlp_container -p 8891:8891 -v "$(pwd)":/workspace entorno_nlp
```

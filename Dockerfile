FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    JUPYTER_PORT=8888 \
    WORKDIR=/workspace

ARG INSTALL_OPTIONAL=true

WORKDIR ${WORKDIR}

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    wget \
    tini \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

COPY requirements-base.txt requirements-optional.txt ./

RUN python -m pip install --upgrade pip setuptools wheel && \
    pip install -r requirements-base.txt && \
    if [ "$INSTALL_OPTIONAL" = "true" ]; then pip install -r requirements-optional.txt; fi

RUN python -m nltk.downloader punkt stopwords wordnet omw-1.4 averaged_perceptron_tagger && \
    python -m spacy download es_core_news_sm

EXPOSE 8888

ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--ServerApp.root_dir=/workspace"]

### CC0C2 - Procesamiento del Lenguaje Natural

Repositorio público del curso **CC0C2 - Procesamiento del Lenguaje Natural**.

Este curso introduce y desarrolla, con un enfoque riguroso y contemporáneo de Ciencia de la Computación e Inteligencia Artificial, los fundamentos, modelos y sistemas que hoy estructuran el procesamiento del lenguaje natural moderno. 
El énfasis del curso no está solo en "usar" modelos o librerías, sino en comprender cómo se representa el lenguaje, cómo se entrenan y evalúan los modelos, cómo se construyen sistemas de NLP útiles y cómo se defienden técnicamente las decisiones tomadas.

> Lenguaje principal del curso: **Python 3**
> 
> Entorno principal: **Jupyter Notebook/Google Colab**
> 
> Librerías base: **PyTorch, Hugging Face Transformers, Datasets, tokenizers y utilidades de evaluación**

#### Descripción del curso

Asignatura teórico-práctica orientada al análisis, implementación, evaluación y sustentación rigurosa de métodos clásicos y modernos de procesamiento del lenguaje natural. 

El curso cubre el pipeline de NLP, fundamentos de aprendizaje para texto, optimización y generalización, atención, transformers, modelos de lenguaje, adaptación y alineamiento, embeddings, búsqueda semántica, retrieval-augmented generation (RAG), agentes basados en lenguaje, multimodalidad, modelos generativos, RLHF y fundamentos de despliegue y operación de sistemas de lenguaje.

A lo largo del curso se enfatiza la relación entre:

- representación lingüística y representación vectorial,
- corpus, calidad de datos y sesgos,
- arquitectura del modelo y costo computacional,
- entrenamiento, adaptación y evaluación,
- inferencia, recuperación y uso de herramientas,
- correctitud experimental y reproducibilidad,
- defensa oral de decisiones técnicas.

#### Competencia del curso

Analizar, implementar, evaluar y sustentar técnicamente sistemas de procesamiento del lenguaje natural, justificando la elección de representaciones, modelos, métricas y estrategias de despliegue según el problema, el corpus y las restricciones del sistema.

#### Resultados de aprendizaje

Al finalizar el curso, el estudiante deberá ser capaz de:

1. Explicar el pipeline de un sistema moderno de NLP desde los datos hasta el despliegue.
2. Analizar corpus, métricas, sesgos y criterios de generalización en tareas de lenguaje.
3. Implementar modelos básicos de aprendizaje profundo para texto en notebooks reproducibles.
4. Explicar con precisión el mecanismo de atención y la arquitectura transformer.
5. Distinguir pretraining, fine-tuning, instruction tuning, alignment y RAG.
6. Diseñar experimentos con embeddings, búsqueda semántica y recuperación aumentada.
7. Analizar el papel de agentes, tool use, memoria y planificación en sistemas de lenguaje.
8. Relacionar NLP con multimodalidad, generación, RLHF y operación de sistemas modernos.
9. Sustentar oralmente decisiones de modelado, evaluación y diseño experimental.

#### Prerrequisitos esperados

Se asume que el estudiante llega con bases razonables en:

- inteligencia artificial,
- programación en Python,
- estructuras de datos y algoritmos,
- álgebra lineal y probabilidad básica,
- razonamiento lógico y análisis experimental.

**Prerrequisito formal:** **CC421 Inteligencia Artificial**.

#### Enfoque metodológico

El curso se desarrolla con una combinación de:

- teoría rigurosa,
- lectura técnica guiada,
- implementación disciplinada en notebooks,
- análisis experimental,
- discusión de resultados,
- defensas orales breves,
- evaluación de comprensión real.

La intención es que el estudiante no solo logre que un modelo "produzca salidas", sino que pueda explicar qué representación usa, cómo fue entrenado o adaptado, qué métrica corresponde, cuáles son sus errores, qué sesgos o riesgos aparecen y en qué condiciones el sistema resulta adecuado o insuficiente.

#### Contenido general

##### Unidad I - Fundamentos del NLP y aprendizaje para texto

- Panorama 2025-2030 del NLP y los modelos fundacionales
- Tipos de aprendizaje en problemas de lenguaje
- Pipeline de ML para texto
- Datos, métricas, generalización y calidad de corpus
- Perceptrón, MLP, optimización y regularización
- Límites de RNN y LSTM para secuencias largas

##### Unidad II - Transformers, modelos de lenguaje y adaptación

- Atención y self-attention
- Multi-head attention, residuals y normalization
- Arquitecturas encoder-only, encoder-decoder y decoder-only
- Tokenización, embeddings, contexto e inferencia autoregresiva
- Fine-tuning, PEFT, LoRA y QLoRA
- Alignment, RLHF, DPO y ORPO

##### Unidad III - Retrieval, agentes y multimodalidad

- Embeddings y búsqueda semántica
- Vector stores y retrieval-augmented generation
- Tool use, memoria, planificación y verificación
- Vision Transformers aplicados a lenguaje y percepción
- CLIP, VLM, VQA y modelos multimodales

##### Unidad IV - Generación, RL y sistemas de NLP

- Autoencoders, VAE y GANs como contexto generativo
- Modelos de difusión y generación condicionada
- RL, RLHF y toma de decisiones sobre señales humanas
- Serving, monitorización, latencia, privacidad y seguridad
- Modelos grandes en la nube y modelos pequeños en el borde
- Integración del curso y proyección hacia estudios avanzados

#### Programación semanal
##### Cronograma del curso

| Semana | Jueves (4:00 p. m. - 6:00 p. m.) | Sábado (2:00 p. m. - 6:00 p. m.) | Resultado esperado |
|---|---|---|---|
| 1 | Presentación del curso. Panorama 2025-2030. Tipos de aprendizaje. Modelos fundacionales. | Pipeline de ML para texto, datos, evaluación, despliegue y entorno de notebooks. | Comprende el alcance del curso, su estándar de trabajo y el pipeline general de NLP moderno. |
| 2 | **No hay clases (2 de abril).** | Datos, train/validation/test, métricas, overfitting, sesgo-varianza, limpieza y sesgos de corpus. | Distingue calidad de datos, generalización y evaluación en tareas de lenguaje. |
| 3 | Perceptrón, MLP, activaciones, pérdidas y retropropagación. | Notebook de entrenamiento de un MLP para una tarea básica de NLP o clasificación textual simplificada. | Relaciona representación, pérdida y optimización en modelos básicos. |
| 4 | Regularización, generalización, SGD, Adam, schedules. | RNN, LSTM y límites para secuencias largas. **Práctica calificada 1.** | Justifica técnicas de entrenamiento y comprende por qué se requiere atención. |
| 5 | Atención: queries, keys, values y self-attention. | Multi-head attention, residuals, normalization y bloque transformer. | Explica el mecanismo de atención y su papel en modelos modernos de lenguaje. |
| 6 | Positional encodings, RoPE y variantes arquitectónicas. | Encoder-only, encoder-decoder, decoder-only y discusión guiada de transformers. **Práctica calificada 2.** | Compara familias de transformers y entiende su relación con distintas tareas. |
| 7 | Tokenización, embeddings, causal language modeling y contexto. | Decoding, KV cache, inferencia autoregresiva e introducción a instruction tuning. | Comprende el funcionamiento operativo de un LLM antes de su adaptación. |
| 8 | **Semana de examen parcial.** | **Examen parcial.** | Integra fundamentos, deep learning, transformers y bases de LLM. |
| 9 | Fine-tuning, SFT, PEFT, LoRA y QLoRA. | Alignment, reward models, RLHF, DPO/ORPO, sesgos y riesgos. | Explica cómo se adapta y alinea un modelo de lenguaje. |
| 10 | LLM como agentes: tools, memory, planning, guardrails y verifiers. | Embeddings, semantic search, chunking, vector stores y arquitectura de RAG. **Práctica calificada 3.** | Diseña un pipeline básico de búsqueda semántica o RAG y defiende sus decisiones. |
| 11 | RAG en profundidad: retrieve, rerank, refine, generate. | Evaluación de retrieval y grounded generation con notebooks. | Analiza fortalezas y límites de sistemas basados en recuperación. |
| 12 | De CNN a Vision Transformers. | CLIP, representaciones texto-imagen y zero-shot multimodal. | Relaciona NLP moderno con visión y representaciones multimodales. |
| 13 | VLM, VQA, MLLM y aplicaciones multimodales. | Autoencoders, VAE y GANs como contexto histórico de generación. **Práctica calificada 4.** | Distingue familias generativas y conecta lenguaje con multimodalidad. |
| 14 | Modelos de difusión: idea central, ruido y denoising. | DDPM, DDIM, Stable Diffusion, conditioning y noción de DiT. | Comprende la lógica de difusión y su conexión con generación condicionada. |
| 15 | RL, MDP, Q-learning y policy gradient como visión general. | RLHF, serving, monitorización, latencia, privacidad, seguridad y edge vs cloud. **Práctica calificada 5.** | Integra NLP, RLHF y operación de sistemas modernos de lenguaje. |
| 16 | **Semana de examen final.** | **Examen final.** | Integra y evalúa los contenidos del curso. |

#### Sistema de evaluación

El curso considera:

- 5 prácticas calificadas,
- 1 examen parcial,
- 1 examen final.

Fórmula general:

```text
PP = promedio(C1, C2, C3, C4, C5), eliminando la menor nota.
PF = (PP + EP + EF)/3
```

Donde:

- **PP** = promedio de prácticas luego de eliminar la menor,
- **EP** = examen parcial,
- **EF** = examen final,
- **PF** = promedio final.

La **sustentación oral** es prioritaria. En prácticas, exposiciones y verificaciones se evaluará si el estudiante realmente comprende:

- el problema de lenguaje trabajado,
- la representación usada,
- el modelo o pipeline escogido,
- la métrica aplicada,
- la interpretación de resultados,
- los errores y limitaciones del sistema.

Una entrega no defendible oralmente no debe considerarse equivalente a una comprensión real del tema.

#### Bibliografía base

Las referencias del curso se usarán con las siguientes abreviaturas:

- **L1** = Edward Raff, *Inside Deep Learning: Math, Algorithms, Models*
- **L2** = Suhas Pai, *Designing Large Language Model Applications: A Holistic Approach to LLMs*
- **L3** = Omar Sanseviero, Pedro Cuenca, Apolinário Passos y Jonathan Whitaker, *Hands-On Generative AI with Transformers and Diffusion Models*
- **L4** = Jay Alammar y Maarten Grootendorst, *Hands-On Large Language Models: Language Understanding and Generation*
- **L5** = Anjanava Biswas y Wrick Talukdar, *Building Agentic AI Systems*

#### Mensaje final

Este curso no está diseñado para memorizar definiciones ni para depender ciegamente de herramientas automáticas. Está diseñado para construir criterio técnico en procesamiento del lenguaje natural moderno: comprender representaciones, entrenar y adaptar modelos, evaluar con rigor, conectar lenguaje con sistemas reales y sustentar oralmente decisiones técnicas con claridad.


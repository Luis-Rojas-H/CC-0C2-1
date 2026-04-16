## Práctica Calificada 1- CC0C2 Procesamiento del Lenguaje Natural

> Fecha de entrega: 23 de abril a las 4:00 pm entregando el url de su repositorio (texto) conteniendo todo lo pedido.
> 
> No se aceptan entregas tardías.

### 1. Modalidad y propósito
La presente práctica calificada es **individual**. Cada estudiante desarrollará **un proyecto distinto** a partir de los cuadernos 4, 5, 6 y 7 del curso.

El objetivo de esta práctica **no** es premiar la simple ejecución de código ni la apariencia del notebook. El objetivo es verificar si el estudiante:

- comprende lo que implementó,
- puede justificar por qué tomó sus decisiones,
- puede interpretar técnicamente sus resultados,
- y puede relacionar su trabajo con los conceptos del curso.

Esta práctica ha sido diseñada para una duración de **una semana**, por lo que el proyecto debe ser **acotado, defendible y técnicamente claro**.

### 2. Entregables obligatorios
Cada estudiante debe entregar:

1. **Un notebook** (`.ipynb`) basado en el cuaderno asignado y modificado por el estudiante.
2. **Un video narrado** de **más de 10 minutos**, con **voz propia del estudiante**.
3. **Un archivo breve** (`README.md` o PDF de una página) que incluya:
   - objetivo,
   - línea base usada,
   - modificación realizada,
   - resultados principales,
   - errores o limitaciones,
   - conclusión técnica.

### 3. Regla académica central
En esta práctica, la **sustentación oral es una condición de validez académica** del trabajo.

El notebook, las gráficas, las tablas o el código **no generan puntaje por sí solos** si el estudiante no demuestra comprensión real en su explicación.

#### Regla habilitante
Para que la práctica pueda ser calificada normalmente, el estudiante debe cumplir simultáneamente estas condiciones en su video:

1. **Hilvanar y aplicar correctamente por lo menos 8 conceptos obligatorios** de su proyecto.
2. Responder de manera suficiente las preguntas de su proyecto.
3. Justificar con claridad:
   - **qué hizo**, 
   - **por qué lo hizo**,
   - **qué significan sus resultados**.

#### Consecuencia directa
Si el estudiante **no cumple** esas condiciones, la práctica se considera **académicamente inválida** y la calificación final será **0/20**.

#### Importante
- Mencionar conceptos solo de nombre **no cuenta**.
- Repetir definiciones memorizadas sin relacionarlas con el notebook **no cuenta**.
- Leer un libreto o un texto generado por IA sin apropiación conceptual **no cuenta**.
- Si el docente tiene que recordarle después qué conceptos debía explicar, **ese aviso no recupera puntaje**.

### 4. Regla frente al uso de IA
El uso de herramientas de IA **no está prohibido**, pero en esta práctica **no da puntaje por sí mismo**.

Lo que sí se evalúa es si el estudiante puede defender técnicamente su trabajo. En particular:

- Si el estudiante presenta código que no puede explicar, se asumirá que **no hay evidencia suficiente de aprendizaje**.
- Si el estudiante presenta resultados que no puede interpretar, se asumirá que **no comprende el experimento**.
- Si el estudiante usa discurso genérico que no se conecta con su notebook, se asumirá que **no estudió el contenido del proyecto**.

En consecuencia, **código correcto sin explicación correcta no aprueba la práctica**.

### 5. Estructura obligatoria del video
El video debe seguir esta estructura mínima:

1. Presentación del problema.
2. Identificación del cuaderno base.
3. Explicación de la línea base.
4. Explicación de la modificación realizada.
5. Representación de entrada y salida.
6. Arquitectura o flujo del modelo.
7. Función de pérdida y optimización.
8. Comparación entre línea base y variante.
9. Resultados y su interpretación.
10. Análisis de errores o limitaciones.
11. Explicación hilvanada de los conceptos obligatorios.
12. Sección final: **"Qué hice, por qué lo hice y qué significan mis resultados"**.
13. Sección final: **"Puente al curso"**.

### 6. Capa obligatoria adicional de dificultad
Todos los proyectos deben incluir **tres capas**:

#### Capa A. Línea base identificable
El estudiante debe ejecutar o reconstruir una versión mínima del cuaderno base.

#### Capa B. Modificación significativa
El estudiante debe introducir una modificación real. No se aceptan cambios superficiales como:

- renombrar variables,
- cambiar colores de gráficos,
- mover celdas,
- alterar texto sin alterar el experimento.

#### Capa C. Comparación y juicio técnico
El estudiante debe comparar línea base vs variante y emitir un juicio técnico sobre:

- qué cambió,
- por qué cree que cambió,
- qué limitación se mantiene,
- qué tema posterior del curso podría superar esa limitación.

### 7. Proyectos individuales

> El docente asignará **un proyecto por estudiante**. Hay **7 proyectos para 7 estudiantes**.

#### Proyecto 1. Optimización y estabilidad de entrenamiento
**Cuaderno base:** Cuaderno 5  
**Tema central:** comparación entre optimizadores y schedules de tasa de aprendizaje.

#### Trabajo mínimo
El estudiante debe entrenar un modelo base y comparar por lo menos estas tres configuraciones:

- SGD,
- SGD con momentum,
- AdamW.

Además, debe utilizar **al menos un scheduler** entre estas opciones:

- StepLR,
- ExponentialLR,
- CosineAnnealingLR,
- ReduceLROnPlateau.

#### Capa adicional de dificultad
Debe realizar una **mini ablación** adicional cambiando uno de estos elementos:

- tasa de aprendizaje inicial,
- batch size,
- número de épocas,
- presencia o ausencia de gradient clipping.

#### Evidencias mínimas
- una tabla comparativa,
- al menos una gráfica de entrenamiento,
- una comparación entre configuraciones,
- una interpretación técnica de estabilidad o convergencia.

#### Conceptos obligatorios
En su exposición debe **hilvanar por lo menos 8** de estos conceptos, aplicados a su propio experimento:

- gradiente,
- tasa de aprendizaje,
- optimizador,
- SGD,
- momentum,
- AdamW,
- scheduler,
- convergencia,
- estabilidad de entrenamiento,
- hiperparámetro,
- función de pérdida,
- gradient clipping.

#### Preguntas obligatorias que debe explicar
1. ¿Qué diferencia concreta observaste entre SGD, SGD con momentum y AdamW en tu experimento?
2. ¿Por qué elegiste el learning rate inicial que usaste?
3. ¿Qué papel cumplió el scheduler en tu entrenamiento?
4. ¿Cómo identificaste si el entrenamiento era estable o inestable?
5. ¿Qué evidencia tienes de convergencia o falta de convergencia?
6. ¿Qué cambió cuando hiciste la ablación adicional?
7. ¿Por qué un optimizador puede parecer mejor en pérdida pero no necesariamente en generalización?
8. ¿Por qué este tema es importante antes de trabajar con arquitecturas más grandes del curso?

#### Proyecto 2. Regularización y generalización de verdad
**Cuaderno base:** Cuaderno 6  
**Tema central:** comparar técnicas de regularización y discutir sobreajuste.

#### Trabajo mínimo
El estudiante debe comparar al menos tres variantes entre:

- modelo sin regularización,
- modelo con L2 o weight decay,
- modelo con dropout,
- modelo con early stopping.

#### Capa adicional de dificultad
Debe añadir una comparación secundaria cambiando uno de estos elementos:

- probabilidad de dropout,
- fuerza de L2,
- criterio de early stopping,
- tamaño del modelo.

#### Evidencias mínimas
- curvas de train y validación,
- comparación numérica,
- explicación del punto donde aparece overfitting,
- una conclusión sobre generalización.

#### Conceptos obligatorios
En su exposición debe **hilvanar por lo menos 8** de estos conceptos:

- generalización,
- sobreajuste,
- subajuste,
- regularización,
- L2,
- weight decay,
- dropout,
- early stopping,
- train loss,
- validation loss,
- sesgo-varianza,
- capacidad del modelo.

#### Preguntas obligatorias que debe explicar
1. ¿Cómo distingues en tus curvas un caso de overfitting de uno de underfitting?
2. ¿Qué técnica de regularización ayudó más en tu experimento y por qué?
3. ¿Cuál fue el costo de aplicar esa técnica?
4. ¿Cómo se relaciona la capacidad del modelo con el sobreajuste?
5. ¿Qué evidencia tienes de mejor generalización y no solo de mejor ajuste al train?
6. ¿Qué ocurrió cuando cambiaste el hiperparámetro adicional?
7. ¿Qué técnica no funcionó tan bien y por qué crees que ocurrió eso?
8. ¿Por qué este tema es importante para etapas posteriores del curso como adaptación o fine-tuning?

#### Proyecto 3. Embeddings frente a representaciones discretas
**Cuadernos base:** Cuaderno 4 y Cuaderno 7  
**Tema central:** comparar bag-of-words o índices discretos frente a embeddings densos.

#### Trabajo mínimo
El estudiante debe construir una comparación entre:

- una representación discreta (bag-of-words o índices simples),
- una representación con embeddings entrenables.

La tarea puede ser pequeña, pero debe ser comparable.

#### Capa adicional de dificultad
Debe incluir una **comparación de errores** con al menos 3 ejemplos donde una representación sea más útil o más limitada que la otra.

#### Evidencias mínimas
- descripción del vocabulario,
- dimensiones de entrada,
- comparación de resultados,
- análisis de ejemplos concretos.

#### Conceptos obligatorios
En su exposición debe **hilvanar por lo menos 8** de estos conceptos:

- token,
- vocabulario,
- índice,
- bag-of-words,
- embedding,
- vector denso,
- dimensión del embedding,
- representación,
- OOV o límite del vocabulario,
- similitud,
- contexto,
- generalización.

#### Preguntas obligatorias que debe explicar
1. ¿Qué pierde una representación discreta que sí puede capturar mejor un embedding?
2. ¿Qué representa exactamente un embedding en tu notebook?
3. ¿Cómo definiste la dimensión del embedding y por qué?
4. ¿Qué limitación tiene el vocabulario de tu experimento?
5. ¿Qué casos de error encontraste donde una representación falla más que la otra?
6. ¿Por qué dos tokens diferentes podrían terminar con vectores cercanos?
7. ¿Qué diferencia conceptual existe entre contar palabras y representarlas como vectores densos?
8. ¿Cómo conecta este proyecto con atención, búsqueda semántica o RAG?

#### Proyecto 4. RNN vs LSTM en una tarea secuencial
**Cuadernos base:** Cuaderno 6 y Cuaderno 7  
**Tema central:** comparar una RNN con una LSTM y discutir memoria secuencial.

#### Trabajo mínimo
El estudiante debe entrenar:

- una RNN,
- una LSTM,

sobre una tarea secuencial del cuaderno o una variante pequeña derivada de ella.

#### Capa adicional de dificultad
Debe incorporar una **prueba de estrés** comparando alguno de estos aspectos:

- secuencias cortas vs secuencias largas,
- ejemplos fáciles vs difíciles,
- menos épocas vs más épocas,
- tamaño oculto pequeño vs mayor.

#### Evidencias mínimas
- resultados comparativos,
- análisis de longitud o dificultad,
- explicación de por qué una LSTM puede rendir mejor,
- discusión de limitaciones persistentes.

#### Conceptos obligatorios
En su exposición debe **hilvanar por lo menos 8** de estos conceptos:

- secuencia,
- estado oculto,
- procesamiento secuencial,
- RNN,
- LSTM,
- memoria,
- dependencia de largo alcance,
- desaparición del gradiente,
- compuertas,
- cuello de botella,
- representación temporal,
- limitación recurrente.

#### Preguntas obligatorias que debe explicar
1. ¿Qué diferencia estructural importante existe entre tu RNN y tu LSTM?
2. ¿Por qué una LSTM puede manejar mejor ciertas dependencias largas?
3. ¿Qué entiendes por estado oculto en tu experimento?
4. ¿Cómo se manifestó el problema de secuencias largas o difíciles?
5. ¿Qué papel cumplen las compuertas en la LSTM?
6. ¿Qué muestra tu prueba de estrés sobre memoria o degradación?
7. ¿Qué limitación persiste incluso cuando la LSTM mejora?
8. ¿Por qué este proyecto motiva la aparición de mecanismos de atención?

#### Proyecto 5. Padding, packed sequences y bidireccionalidad
**Cuaderno base:** Cuaderno 7  
**Tema central:** secuencias de longitud variable, eficiencia y contexto.

#### Trabajo mínimo
El estudiante debe comparar al menos dos variantes entre:

- padding simple,
- packed sequences,
- RNN o LSTM unidireccional,
- RNN o LSTM bidireccional.

#### Capa adicional de dificultad
Debe agregar una comparación breve de **calidad vs costo**, reportando por ejemplo:

- tiempo aproximado,
- cantidad de cómputo inútil por padding,
- costo conceptual de usar contexto bidireccional.

#### Evidencias mínimas
- explicación de longitudes variables,
- comparación entre padding y packed sequences,
- análisis de bidireccionalidad,
- juicio técnico sobre eficiencia.

#### Conceptos obligatorios
En su exposición debe **hilvanar por lo menos 8** de estos conceptos:

- padding,
- longitud variable,
- batch,
- packed sequence,
- eficiencia,
- cómputo inútil,
- bidireccionalidad,
- contexto hacia adelante,
- contexto hacia atrás,
- costo computacional,
- máscara conceptual,
- latencia.

#### Preguntas obligatorias que debe explicar
1. ¿Por qué el padding existe en este tipo de modelos?
2. ¿Qué problema resuelven las packed sequences?
3. ¿Qué parte del cómputo puede ser inútil cuando se usa padding simple?
4. ¿Qué gana y qué cuesta usar un modelo bidireccional?
5. ¿Cómo cambió la calidad o eficiencia entre tus variantes?
6. ¿Por qué las secuencias de distinta longitud son un problema práctico?
7. ¿Qué tipo de contexto agrega una arquitectura bidireccional?
8. ¿Cómo conecta este proyecto con máscaras y procesamiento eficiente en modelos más modernos?

#### Proyecto 6. Mini self-attention y lectura de la matriz de atención
**Cuaderno base:** Cuaderno 7  
**Tema central:** entender self-attention a partir de un ejemplo mínimo.

#### Trabajo mínimo
El estudiante debe adaptar el ejemplo de self-attention del cuaderno y mostrar:

- cómo se construyen queries,
- keys,
- values,
- cómo se forma la matriz de atención,
- cómo se interpretan los pesos.

No se exige implementar un transformer completo.

#### Capa adicional de dificultad
Debe añadir una comparación conceptual o experimental entre:

- una representación recurrente,
- y una representación basada en self-attention,

aunque sea sobre un ejemplo pequeño.

#### Evidencias mínimas
- visualización o impresión de pesos de atención,
- explicación posición por posición,
- lectura de qué token atiende a cuál,
- interpretación de ventajas y límites.

#### Conceptos obligatorios
En su exposición debe **hilvanar por lo menos 8** de estos conceptos:

- query,
- key,
- value,
- producto punto,
- pesos de atención,
- self-attention,
- matriz de atención,
- complejidad cuadrática,
- dependencia global,
- representación contextual,
- similitud,
- escalamiento.

#### Preguntas obligatorias que debe explicar
1. ¿Qué representan las queries, keys y values en tu ejemplo?
2. ¿Cómo se obtiene la matriz de atención?
3. ¿Qué significa que un token atienda a otro en tu visualización?
4. ¿Por qué el producto punto sirve para construir pesos de atención?
5. ¿Qué ventaja muestra self-attention frente a una dependencia puramente recurrente?
6. ¿Qué quiere decir complejidad cuadrática en este contexto?
7. ¿Qué limitación tiene todavía tu mini ejemplo respecto a un transformer real?
8. ¿Qué faltaría para pasar de este ejemplo a multi-head attention y bloque transformer?

#### Proyecto 7. Residual connections y LayerNorm como antesala del bloque transformer
**Cuaderno base:** Cuaderno 6  
**Tema central:** conexiones residuales y normalización como mecanismos de flujo de información y entrenamiento estable.

#### Trabajo mínimo
El estudiante debe tomar un modelo base y compararlo con una variante que incorpore al menos dos de estos elementos:

- conexión residual,
- BatchNorm,
- LayerNorm,
- activación más estable,
- regularización adicional.

#### Capa adicional de dificultad
Debe construir una **discusión de arquitectura**, no solo de resultados. Debe explicar por qué estos bloques reaparecen luego en transformers.

#### Evidencias mínimas
- esquema o explicación del flujo del modelo,
- comparación entre variante simple y variante mejorada,
- lectura de resultados,
- conclusión sobre estabilidad o paso de información.

#### Conceptos obligatorios
En su exposición debe **hilvanar por lo menos 8** de estos conceptos:

- residual connection,
- shortcut,
- LayerNorm,
- BatchNorm,
- activación,
- flujo del gradiente,
- estabilidad,
- profundidad,
- representación intermedia,
- bloque,
- normalización,
- entrenamiento profundo.

#### Preguntas obligatorias que debe explicar
1. ¿Qué cambia en el flujo de información cuando agregas una residual connection?
2. ¿Qué diferencia conceptual existe entre BatchNorm y LayerNorm?
3. ¿Por qué la normalización puede ayudar al entrenamiento?
4. ¿Qué problema intenta aliviar una conexión residual?
5. ¿Cómo cambió la estabilidad o el aprendizaje en tu comparación?
6. ¿Qué interpretación das a las representaciones intermedias de tu modelo?
7. ¿Por qué estos bloques reaparecen en arquitecturas transformer?
8. ¿Qué limitación de tu modelo aún no queda resuelta con estas mejoras?

### 8. Requisitos mínimos del notebook
El notebook debe contener, como mínimo:

1. título del proyecto,
2. objetivo,
3. línea base identificada,
4. modificación realizada,
5. configuración experimental,
6. comparación entre línea base y variante,
7. al menos una figura, tabla o resumen numérico,
8. análisis de errores o limitaciones,
9. conclusión técnica,

### 9. Requisitos mínimos del video
El video debe:

- durar **más de 10 minutos**,
- tener **voz propia del estudiante**,
- mostrar el notebook o los resultados mientras explica,
- incluir los **conceptos obligatorios** de su proyecto,
- responder las **preguntas obligatorias** de su proyecto,
- terminar con las secciones:
  - **"Qué hice, por qué lo hice y qué significan mis resultados"**,
  - **"Puente al curso"**.

### 10. Rúbrica de evaluación sobre 20 puntos

### A. Sustentación oral técnica y uso de conceptos-12 puntos
Este criterio es **habilitante**.

#### Para acceder a esta parte de la rúbrica, el estudiante debe:
- explicar correctamente **al menos 8 conceptos obligatorios** de su proyecto,
- responder las preguntas obligatorias de forma suficiente,
- justificar qué hizo, por qué lo hizo y qué significan sus resultados.

Si no cumple eso, la práctica se califica con **0/20**.

#### Desglose
- **4 pts:** explica correctamente el problema, los datos y la representación.
- **4 pts:** explica arquitectura, entrenamiento, pérdida y decisiones técnicas.
- **2 pts:** analiza errores, límites o resultados inesperados.
- **2 pts:** conecta su trabajo con temas posteriores del curso.

### B. Análisis experimental-4 puntos
- **2 pts:** comparación clara entre línea base y variante.
- **2 pts:** interpretación razonada de resultados.

### C. Notebook y calidad técnica-2 puntos
- **1 pt:** orden, claridad y estructura.
- **1 pt:** evidencia suficiente de modificaciones propias y experimento real.

### D. Claridad expositiva-2 puntos
- **1 pt:** secuencia lógica del video.
- **1 pt:** audio claro, organización y cierre entendible.


### 11. Penalizaciones obligatorias
Estas penalizaciones tienen prioridad sobre la rúbrica.

#### Penalizaciones críticas
- **Código o notebook sin video:** **0/20**.
- **Video sin voz propia del estudiante:** **0/20**.
- **Video menor o igual a 10 minutos:** **0/20**.
- **Video que solo muestra ejecución sin explicación conceptual:** **0/20**.
- **No responder las preguntas obligatorias del proyecto:** **0/20**.
- **No justificar qué hizo, por qué lo hizo y qué significan sus resultados:** **0/20**.

> No se puntua como 0, sino como 1, ya que el sistema no acepta 0 como nota.

#### Penalizaciones por conceptos
- **No hilvanar por lo menos 8 conceptos obligatorios del proyecto:** **0/20**.
- **Mencionar conceptos solo de nombre, sin aplicarlos al notebook:** se considera equivalente a **no haberlos explicado**.
- **Usar términos técnicos de manera reiteradamente incorrecta:** puede invalidar la sustentación.
- **Si el docente tiene que avisarle al estudiante qué conceptos debía explicar, ese aviso no recupera puntaje ni valida la sustentación.**

#### Penalizaciones por entrega superficial
- **No comparar línea base vs variante:** descuento de **4 puntos**, siempre que la sustentación siga siendo válida.
- **No analizar errores o limitaciones:** descuento de **3 puntos**, siempre que la sustentación siga siendo válida.
- **No incluir la sección "Puente al curso":** descuento de **2 puntos**, siempre que la sustentación siga siendo válida.
- **No identificar qué parte proviene del cuaderno base y qué parte fue modificación propia:** descuento de **1 punto**, siempre que la sustentación siga siendo válida.


### 12. Qué se considera una buena entrega
Se considera buena entrega aquella que:

- parte de un cuaderno base,
- construye una línea base clara,
- introduce una modificación real,
- compara resultados,
- analiza errores,
- usa con precisión el vocabulario técnico,
- responde las preguntas de su proyecto,
- y demuestra que el estudiante **entiende lo que hizo**.

### 13. Qué se considera una mala entrega
Se considera mala entrega aquella que:

- solo ejecuta celdas,
- recita definiciones sin conexión con el notebook,
- muestra gráficos sin interpretarlos,
- usa IA para generar código o discurso sin comprensión,
- no identifica la diferencia entre línea base y variante,
- no explica al menos 8 conceptos obligatorios,
- no responde las preguntas de su proyecto,
- o no puede justificar qué hizo, por qué lo hizo y qué significan sus resultados.


### 14. Observación final
La práctica ha sido diseñada para que sea **realizable en una semana**, incluso por estudiantes que suelen avanzar tarde. Precisamente por ello, la exigencia principal no estará en implementar un sistema gigantesco, sino en producir una entrega **pequeña pero defendible**, con comprensión real, análisis técnico y apropiación conceptual del trabajo presentado.

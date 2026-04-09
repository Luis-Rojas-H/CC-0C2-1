### Actividad 2: Pipeline textual, perceptrón y clasificación de texto con MLP

#### Objetivo

Desarrollar los ejercicios de los cuadernos para analizar, implementar e interpretar un pipeline básico de NLP: auditoría y preparación de corpus, vectorización de texto, entrenamiento de modelos lineales y MLP en PyTorch, evaluación con métricas, visualización de curvas y análisis inicial de errores.

#### Ejercicio 1. Auditoría inicial del corpus

**Se pide:**

* Inspeccionar el corpus y reportar:
  * número de filas
  * textos nulos o vacíos
  * distribución de clases
  * distribución por grupo o región
  * longitud media y mediana del texto
* Mostrar al menos 5 ejemplos del corpus original.
* Elaborar una conclusión breve sobre la calidad inicial del dataset y los principales riesgos antes de entrenar un modelo.

#### Ejercicio 2. Detección de PII y limpieza textual

**Se pide:**

* Aplicar las reglas de detección para:
  * correos electrónicos
  * teléfonos
  * identificadores numéricos
* Anonimizar la PII detectada.
* Implementar una función de normalización del texto que incluya, como mínimo:
  * minúsculas
  * limpieza de espacios
  * reemplazo de PII
* Mostrar una tabla comparando:
  * texto original
  * texto limpio
* Discutir si las reglas actuales producen:
  * falsos positivos
  * falsos negativos

#### Ejercicio 3. Deduplicación y partición segura

**Se pide:**

* Detectar duplicados exactos o equivalentes tras la normalización.
* Reportar:
  * número de duplicados antes de limpiar
  * número de duplicados después de limpiar
  * ejemplos concretos de duplicados o casi duplicados
* Construir particiones `train`, `validation` y `test`.
* Comparar:
  * una partición ingenua
  * una partición segura sin contaminación
* Verificar si existe *data leakage* entre splits.
* Concluir por qué una evaluación sin deduplicación ni partición segura puede ser engañosa.

#### Ejercicio 4. Vocabulario, `Dataset` y `DataLoader`

**Se pide:**

* Construir el vocabulario usando solo `train`.
* Reportar:
  * tamaño del vocabulario
  * tokens más frecuentes
  * ejemplos de texto convertidos a índices o vectores
* Implementar o adaptar:
  * `Dataset`
  * `DataLoader`
  * `collate_fn`
* Explicar por qué el vocabulario no debe construirse con `validation` o `test`.

#### Ejercicio 5. Modelo base, métricas y matriz de confusión

**Se pide:**

* Entrenar el modelo base del cuaderno sobre el corpus procesado.
* Medir en `test`:
  * `accuracy`
  * `precision_macro`
  * `recall_macro`
  * `f1_macro`
  * matriz de confusión
* Mostrar al menos 5 errores de predicción reales.
* Elaborar una interpretación de los errores observados.

#### Ejercicio 6. Generalización, sesgo-varianza y fairness básico

**Se pide:**

* Graficar o reportar las curvas de:
  * `train_loss`
  * `val_loss`
  * `train_f1_macro`
  * `val_f1_macro`
* Ejecutar dos configuraciones contrastantes:
  * una de mayor sesgo / underfitting
  * una de mayor varianza / overfitting
* Comparar el comportamiento de ambas.
* Evaluar rendimiento por grupo o región.
* Discutir:
  * si el modelo generaliza
  * si hay señales de sobreajuste
  * si el desempeño cambia según el grupo analizado

#### Ejercicio 7. Del perceptrón al MLP en PyTorch

**Se pide:**

* Implementar un perceptrón con `nn.Linear`.
* Mostrar la forma de:
  * entrada
  * logits
  * pesos
  * sesgo
* Comparar las activaciones:
  * identidad
  * sigmoid
  * tanh
  * ReLU
* Explicar por qué varias capas lineales sin activación no forman un MLP real.
* Comparar conceptualmente:
  * `MSELoss`
  * `CrossEntropyLoss`
* Concluir qué combinación resulta más apropiada para clasificación.

#### Ejercicio 8. Retropropagación y entrenamiento mínimo de un MLP

**Se pide:**

* Mostrar explícitamente el ciclo:
  * `forward`
  * cálculo de `loss`
  * `loss.backward()`
  * `optimizer.step()`
* Inspeccionar los gradientes de `weight` y `bias` en un perceptrón.
* Entrenar un MLP pequeño sobre el problema XOR.
* Graficar:
  * pérdida por época
  * exactitud por época
* Explicar por qué un MLP puede resolver XOR mejor que un modelo lineal.

#### Ejercicio 9. Clasificación de texto: perceptrón lineal vs MLP

**Se pide:**

* Convertir el corpus de texto a una representación **bag-of-words**.
* Entrenar y comparar:
  * un perceptrón lineal
  * un MLP con una capa oculta
* Usar `CrossEntropyLoss`.
* Reportar para ambos modelos:
  * `test_loss`
  * `test_acc`
  * `test_f1`
* Graficar curvas de:
  * pérdida
  * exactitud
* Elaborar una conclusión sobre cuándo el MLP mejora frente al baseline lineal.

#### Ejercicio 10. Análisis inicial de errores del sistema de texto

**Se pide:**

* Extraer los ejemplos mal clasificados por el MLP.
* Mostrar para cada error:
  * texto
  * etiqueta real
  * predicción
  * confianza máxima
* Identificar patrones de error, por ejemplo:
  * negación
  * mezcla de señales positivas y negativas
  * ejemplos ambiguos
  * vocabulario poco frecuente
* Proponer al menos 3 mejoras posibles, por ejemplo:
  * ampliar el corpus
  * mejorar la limpieza
  * cambiar la representación
  * ajustar la arquitectura
* Concluir cuáles son las principales limitaciones del enfoque bag-of-words + MLP.

#### Resultado final

**Se pide entregar:**

* Hipótesis inicial
* Experimento realizado
* Resultados obtenidos
* Interpretación de resultados
* Conclusión breve.

#### Presentación final

**Se pide presentar:**

* Qué ejercicio se trabajó
* Qué decisiones de implementación se tomaron
* Qué resultados se obtuvieron
* Qué se aprendió sobre preparación de corpus, entrenamiento y evaluación del modelo.

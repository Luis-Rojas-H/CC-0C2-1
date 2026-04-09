### Actividad 1: Laboratorio de paradigmas de aprendizaje

#### Objetivo

Desarrollar los ejercicios del cuaderno para analizar, comparar e interpretar distintos paradigmas de aprendizaje: supervisado, few-shot, no supervisado, autosupervisado y aprendizaje por refuerzo.

#### Ejercicio 1. MLPClassifier vs LogReg

**Se pide:**

* Reemplazar `LogisticRegression` por `MLPClassifier`.
* Probar las configuraciones:

  * `hidden_layer_sizes=(32,)`
  * `hidden_layer_sizes=(64,)`
  * `hidden_layer_sizes=(128,64)`
* Activar `early_stopping=True`.
* Medir:

  * `accuracy`
  * tiempo de entrenamiento con `time.perf_counter()`
  * matriz de confusión
* Elaborar una conclusión sobre cuándo conviene un MLP pequeño frente a un modelo lineal en Digits.

#### Ejercicio 2. Calibración de probabilidades

**Se pide:**

* Comparar la calibración de `LogisticRegression` y `MLPClassifier`.
* Usar `CalibratedClassifierCV` con:

  * `sigmoid`
  * `isotonic`
* Medir:

  * **Brier score**
  * **reliability diagram** o curva de calibración
* Identificar si el modelo es:

  * **overconfident**
  * **underconfident**

#### Ejercicio 3. Curva K-shot

**Se pide:**

* Evaluar para:

  * `N ∈ {5,10}`
  * `K ∈ {1,2,5,10}`
* Ejecutar `evaluate_fewshot(..., episodes=500)`.
* Guardar resultados como:

  * `mean ± std`
* Graficar curvas comparando:

  * 5-way y 10-way
  * embeddings de píxeles
  * embeddings del autoencoder
  * embeddings contrastivos
* Discutir qué representación mejora más rápido al aumentar K.

#### Ejercicio 4. Cosine distance + normalización

**Se pide:**

* Modificar el episodio prototípico para usar **cosine distance**.
* Normalizar `E_q` y `protos` con `F.normalize`.
* Comparar contra distancia euclídea en las combinaciones:

  * 5-way 1-shot
  * 5-way 5-shot
  * 10-way 1-shot
  * 10-way 5-shot
* Discutir por qué cosine puede ayudar cuando los embeddings son aprendidos y normalizados.

#### Ejercicio 5. Clustering: sensibilidad a k y estabilidad

**Se pide:**

* Evaluar `k ∈ {8,9,10,11,12}`.
* Usar `n_init` alto.
* Reportar:

  * `kmeans.inertia_`
  * ARI como referencia de comparación
* Repetir con 5 semillas distintas.
* Medir la varianza de resultados.
* Concluir qué tan estable es el agrupamiento.

#### Ejercicio 6. Detección de anomalías difíciles

**Se pide:**

* Reemplazar los outliers de ruido puro por perturbaciones cercanas a Digits:

  * masking fuerte de píxeles
  * ruido gaussiano suave
  * inversión parcial `1-x` en regiones
* Mantener la misma tasa de contaminación.
* Reportar:

  * precisión
  * recall
* Explicar qué tipo de outlier resulta más difícil de detectar y por qué.


#### Ejercicio 7. Autoencoder: capacidad latente y utilidad

**Se pide:**

* Entrenar autoencoders con:

  * `d_lat ∈ {8,16,32,64}`
* Para cada configuración reportar:

  * MSE de reconstrucción
  * few-shot en `5-way 1-shot`
  * few-shot en `10-way 1-shot`
  * linear probe con `K=5` labels por clase
* Comparar qué dimensión latente ofrece mejor equilibrio entre reconstrucción y utilidad.

#### Ejercicio 8. Contrastivo: temperatura y augmentations

**Se pide:**

* Entrenar 3 modelos con:

  * `tau ∈ {0.1,0.2,0.5}`
* Luego fijar `tau` y cambiar augmentations:

  * Solo ruido
  * Solo masking
  * Ruido + masking
* Evaluar con few-shot.
* Comparar resultados.
* Concluir cómo las augmentations definen las invariancias aprendidas por el embedding.

#### Ejercicio 9. Reward shaping y política emergente

**Se pide:**

* Cambiar la penalidad por paso a:

  * `-0.00`
  * `-0.01`
  * `-0.05`
* Añadir opcionalmente penalidad por chocar con una pared.
* Para cada configuración reportar:

  * Curva de retorno promedio móvil
  * Política final impresa
* Interpretar si la política:

  * Busca la meta de forma más agresiva
  * Evita trampas antes
  * Cambia su estilo de comportamiento

#### Ejercicio 10. Epsilon-greedy: lineal vs exponencial

**Se pide:**

* Implementar un decaimiento lineal de `ε`:

  * desde `1.0` hasta `0.05`
  * durante aproximadamente el 60% de los episodios
  * luego mantenerlo constante
* Compararlo contra el decaimiento exponencial del baseline.
* Reportar:

  * Velocidad de convergencia
  * Episodio en el que el retorno se estabiliza
  * Varianza entre 3 semillas
* Concluir qué estrategia de exploración es más robusta.

### Resultado final

**Se pide entregar:**

* Hipótesis inicial
* Experimento realizado
* Resultados obtenidos
* Interpretación de resultados
* Conclusión breve.

### Presentación final

**Se pide presentar:**

* Qué ejercicio se trabajó
* Qué resultados se obtuvieron
* Qué se aprendió del método evaluado.

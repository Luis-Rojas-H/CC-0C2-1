## Notas sobre gestión de datos y evaluación en NLP y LLM

En los sistemas de **Procesamiento de Lenguaje Natural** (**Natural Language Processing, NLP**) y en los **Modelos Grandes de Lenguaje** (**Large Language Models, LLM**), el rendimiento final no depende solo de la arquitectura del modelo, sino también de la calidad y del tratamiento del conjunto de datos. 
Por eso, antes de entrenar, evaluar o desplegar un sistema, es necesario trabajar cuidadosamente sobre los **datos** (**data**) y sobre el **corpus textual** (**text corpus**). 
Los datos son las observaciones concretas con las que se construye el sistema, el corpus textual es la colección organizada de textos que representa el dominio del problema. 
Un corpus puede estar formado por noticias, mensajes de soporte, reseñas, conversaciones o documentos, pero en todos los casos debe entenderse como una muestra del lenguaje real, con sus patrones, sesgos, errores y límites.

El primer paso importante es revisar la **calidad de los datos** (**data quality**). La calidad de datos implica comprobar si el corpus es coherente, suficiente y adecuado para la tarea. 
En NLP esto incluye verificar si hay textos vacíos, nulos, mal codificados o excesivamente cortos, si las clases están balanceadas, si ciertos grupos o variedades lingüísticas están subrepresentados y si existen registros repetidos o anómalos. 

En el caso de los LLM, la calidad de datos también afecta la diversidad del conocimiento aprendido, la robustez del modelo y su capacidad para responder de manera útil en distintos contextos. Un sistema entrenado con datos pobres o muy sesgados puede parecer competente en pruebas limitadas, pero fallar cuando cambia el dominio o cuando interactúa con usuarios reales.

Otro aspecto esencial es la detección de **información personal identificable** (**Personally Identifiable Information, PII**). 
La PII incluye información que puede identificar a una persona, como nombres completos, correos electrónicos, teléfonos, direcciones o números de documento. 
En corpus textuales, este problema es muy frecuente porque los textos pueden contener datos personales visibles dentro de mensajes, formularios o registros de atención. 
El tratamiento básico de PII consiste en detectarla y reemplazarla por marcadores neutros, por ejemplo `<EMAIL>`, `<PHONE>` o `<DNI>`, en lugar de conservar el dato real. 
Esta práctica permite proteger la privacidad sin destruir completamente la estructura informativa del texto. 

En modelos grandes como los LLM, el manejo de PII es todavía más importante, porque un corpus mal filtrado puede terminar introduciendo información sensible en el entrenamiento.

Una vez revisada la presencia de PII, se aplica la **limpieza de datos** (**cleaning**). La limpieza es el proceso de normalización del texto para reducir ruido superficial y volver el corpus más consistente. 
Esto puede incluir convertir el texto a minúsculas, eliminar tildes cuando la tarea lo permita, normalizar espacios, corregir codificación extraña, quitar símbolos irrelevantes y reemplazar información sensible por tokens estandarizados. 
En NLP clásico, esta etapa ayuda a reducir el tamaño del vocabulario y a mejorar representaciones como **bolsa de palabras** (**bag-of-words**) o **frecuencia de término-frecuencia inversa del documento** (**TF-IDF**). 

En LLM y modelos modernos, la limpieza puede ser menos agresiva, porque parte de la riqueza del lenguaje también es útil, pero aun así sigue siendo importante para evitar basura, etiquetas rotas o formatos inconsistentes. La idea central es que limpiar no significa empobrecer el dato, sino volverlo más confiable para el entrenamiento y la evaluación.

Después de la limpieza aparece la **deduplicación** (**deduplication**). La deduplicación consiste en detectar y eliminar textos duplicados o casi duplicados. 
Esto es clave porque un corpus con muchas repeticiones puede inflar artificialmente el tamaño del dataset y producir una falsa sensación de diversidad. 
Además, si un ejemplo repetido aparece tanto en entrenamiento como en evaluación, las métricas se vuelven engañosas. En NLP supervisado, esto puede hacer que un clasificador parezca generalizar mejor de lo que realmente hace. 

En LLM, la deduplicación también es importante porque grandes volúmenes de texto repetido pueden distorsionar el aprendizaje y, en el peor caso, favorecer memorización innecesaria. 
Por eso, una buena práctica es deduplicar después de una limpieza razonable, de modo que variaciones triviales de mayúsculas, puntuación o espacios no oculten repeticiones reales.

Muy relacionado con esto está el problema de la **contaminación de datos**  o **fuga de información** (**data leakage**). La contaminación ocurre cuando información que debería estar separada se filtra entre distintas etapas del pipeline. El caso más conocido es la contaminación entre **entrenamiento/ validación/prueba** (**train/validation /test**). 
El conjunto de entrenamiento se usa para aprender los parámetros del modelo, el conjunto de validación sirve para ajustar decisiones durante el desarrollo y el conjunto de prueba debe reservarse para la evaluación final. 
Si textos iguales o casi iguales aparecen en más de una partición, o si el vocabulario, el preprocesamiento o ciertas estadísticas se construyen
usando el conjunto de pruebas antes de tiempo, aparece una forma de fuga de información. El resultado es que el sistema parece mejor de lo que realmente es. 

Esto es especialmente delicado en LLM y benchmarks modernos, donde la contaminación puede ocurrir a gran escala si los datos de evaluación ya estaban presentes en el corpus de preentrenamiento.

Por eso se necesita construir una partición segura de **entrenamiento/validación/prueba**. Esa partición debe realizarse después de la limpieza y, de ser posible, después de la deduplicación para reducir el riesgo de solapamientos ocultos. 
También conviene mantener una distribución razonable de clases y, cuando sea relevante, de grupos demográficos o regiones. Solo así las métricas obtenidas reflejan una estimación creíble del comportamiento futuro del sistema. 
En problemas pequeños, una partición bien hecha ya mejora mucho la confiabilidad experimental, en problemas grandes es una condición mínima para afirmar que el modelo realmente funciona fuera del conjunto de entrenamiento.

Una vez construidos los splits, se pasa a la evaluación con varias **métricas**. En clasificación, las métricas más comunes son **exactitud** (**accuracy**), **precisión** (**precision**), **recall** y **F1-score**. 
La exactitud mide la proporción total de predicciones correctas, la precisión indica cuántas de las predicciones positivas fueron correctas, el recall mide cuántos positivos reales logró recuperar el sistema y el F1-score resume precisión y recall en una sola medida. 
En conjunto de datos desbalanceados, mirar solo la exactitud puede ser insuficiente, por lo que conviene complementar con métricas macro o por clase. En NLP aplicado y en evaluación de componentes de LLM, esto ayuda a distinguir si el sistema funciona bien de forma uniforme o si solo favorece la clase mayoritaria.

La interpretación de estas métricas se relaciona directamente con la **generalización**. La generalización es la capacidad de un modelo para rendir bien sobre datos no vistos, no solo sobre los ejemplos con los que fue entrenado. 
Un modelo útil no es el que memoriza el entrenamiento, sino el que mantiene buen desempeño cuando cambia el texto, el usuario o la muestra de evaluación. 
Si las métricas de entrenamiento son muy altas pero las de validación o test son mucho peores, entonces el sistema no está generalizando bien. Esa diferencia suele indicar **sobreajuste** (**overfitting**). 
El sobreajuste ocurre cuando el modelo aprende demasiado los detalles del conjunto de entrenamiento y pierde capacidad para responder correctamente fuera de él. 

En términos simples, memoriza patrones locales en vez de capturar regularidades más generales del lenguaje o de la tarea.

El sobreajuste se entiende mejor junto con el equilibrio **sesgo-varianza** (**bias-variance**). El **sesgo** (**bias**) aparece cuando el modelo es demasiado simple o rígido y no logra capturar suficiente estructura del problema, la **varianza** aparece 
cuando el modelo es demasiado sensible al entrenamiento y cambia mucho ante pequeñas variaciones de los datos. 

Un modelo con alto sesgo tiende a **subajustar** (**underfitting**), uno con alta varianza tiende a sobreajustar. En NLP clásico esto se ve al comparar modelos lineales muy simples con modelos más flexibles. 
En LLM y sistemas grandes, el fenómeno sigue existiendo, aunque aparezca en escalas distintas: más capacidad y más datos pueden reducir sesgo, pero si el corpus está mal curado, la varianza y la memorización pueden seguir siendo un problema.

Finalmente, una evaluación responsable debe incluir un chequeo básico de **equidad** (**fairness**). La equidad consiste en revisar si el sistema funciona de manera comparable entre distintos grupos, dialectos, regiones o poblaciones. 
Un modelo puede tener buen promedio global y, sin embargo, rendir mucho peor para ciertos grupos. Esto no suele deberse solo al modelo, sino también al corpus: si un grupo está subrepresentado, si su variedad lingüística casi no aparece o si sus textos tienen más ruido, el rendimiento por grupo será desigual. 

En sistemas de NLP y en LLM, la equidad es importante porque el lenguaje no es uniforme: cambia según contexto social, geográfico y cultural. Por eso, además de medir métricas globales, conviene revisar resultados segmentados por grupo cuando esa información está disponible y su uso es éticamente adecuado.

En conclusión, los pasos de revisar la **calidad de los datos**, detectar **información personal identificable** (**PII**), aplicar **limpieza de datos**, hacer **eliminación de duplicados**, evitar **contaminación de datos**, 
construir una partición segura de **entrenamiento/validación/prueba**, evaluar con varias **métricas**, analizar la **generalización**, ilustrar 
el **sobreajuste** y el equilibrio **sesgo-varianza** , y añadir un chequeo básico de **equidad**  no son detalles secundarios. Son la base para que un sistema de **Procesamiento de Lenguaje Natural** (**NLP**) o un **Modelo Grande de Lenguaje** (**LLM**) sea confiable, interpretable y útil. En otras palabras, un buen modelo empieza mucho antes del entrenamiento: empieza con un buen tratamiento del corpus.

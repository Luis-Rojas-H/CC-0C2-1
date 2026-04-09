### Enlaces para la semana 2

#### 1. Datos y corpus textuales

* **Hugging Face Datasets - documentación general**  
  Carga, inspección y manejo de datasets para NLP. ([Hugging Face Datasets][20])

* **Hugging Face Datasets - Process**  
  Filtrado, renombrado de columnas, limpieza y partición del dataset. ([Hugging Face Process][21])

* **Google PAIR - Data Collection + Evaluation**  
  Guía práctica sobre recolección, calidad y evaluación de datos. ([Google PAIR][22])

* **Datasheets for Datasets**  
  Propuesta para documentar responsablemente un corpus: motivación, composición, usos y riesgos. ([Datasheets for Datasets][23])

#### 2. Partición train/validation/test y prevención de leakage

* **scikit-learn-train_test_split**  
  Partición básica reproducible con soporte para estratificación. ([scikit-learn train_test_split][24])

* **scikit-learn-Common pitfalls and recommended practices**  
  Recurso muy útil para explicar *data leakage* y errores comunes en evaluación. ([scikit-learn Common Pitfalls][25])

* **scikit-learn-Getting Started / Pipelines**  
  Cómo encadenar preprocesamiento y modelo evitando fugas de información. ([scikit-learn Pipelines][26])

#### 3. Métricas, generalización, overfitting y sesgo-varianza

* **Google ML Crash Course-Datasets, generalization, and overfitting**  
  Base conceptual clara para generalización y sobreajuste. ([Google MLCC Overfitting][27])

* **Hugging Face Evaluate-documentación**  
  Biblioteca para métricas y evaluación reproducible. ([Hugging Face Evaluate][28])

* **Hugging Face Evaluate-Choosing a metric**  
  Guía para seleccionar métricas según la tarea. ([Choosing a Metric][29])

#### 4. Calidad de datos, limpieza y deduplicación

* **Google Cloud-Guidelines for developing high-quality ML solutions**  
  Buenas prácticas para calidad de datos y validación del pipeline. ([Google Cloud Quality Guidelines][30])

* **Hugging Face-Data Measurements Tool**  
  Estadísticas del dataset, distribución de etiquetas, longitudes y señales de sesgo. ([Data Measurements Tool][31])

* **Hugging Face-Large-scale Near-deduplication Behind BigCode**  
  Introducción a deduplicación aproximada y detección de *near-duplicates* a gran escala. ([HF Dedup Blog][32])

#### 5. Fairness, contaminación y tratamiento básico de PII

* **Google ML Crash Course-Fairness**  
  Sesgo, auditoría por grupos y mitigación básica. ([Google MLCC Fairness][33])

* **Vertex AI-Introduction to model evaluation for fairness**  
  Métricas de *fairness* y evaluación por *slices* o subgrupos. ([Vertex AI Fairness][34])

* **ICLR 2024-Tracing Data Contamination in Large Language Models**  
  Lectura útil para discutir contaminación entre entrenamiento y evaluación. ([ICLR 2024 Contamination][35])

* **NIST-Guide to Protecting the Confidentiality of PII**  
  Manejo responsable de información personal identificable. ([NIST PII Guide][36])

* **NIST SP 800-188-De-Identifying Government Datasets**  
  Desidentificación, reducción de riesgo y privacidad. ([NIST De-Identification][37])

[1]: https://developers.google.com/machine-learning/crash-course "Machine Learning | Google for Developers"
[2]: https://scikit-learn.org/stable/user_guide.html "User Guide-scikit-learn documentation"
[3]: https://incompleteideas.net/book/the-book-2nd.html "Reinforcement Learning: An Introduction"
[4]: https://web.stanford.edu/class/psych209/Readings/SuttonBartoIPRLBook2ndEd.pdf "Reinforcement Learning: An Introduction"
[5]: https://mitpress.mit.edu/9780262039246/reinforcement-learning/ "Reinforcement Learning"
[6]: https://proceedings.mlr.press/v119/chen20j.html "A Simple Framework for Contrastive Learning of Visual Representations"
[7]: https://arxiv.org/abs/1810.04805 "BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding"
[8]: https://aclanthology.org/N19-1423/ "BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding"
[9]: https://docs.cloud.google.com/architecture/mlops-continuous-delivery-and-automation-pipelines-in-machine-learning "MLOps: Continuous delivery and automation pipelines in machine learning"
[10]: https://www.nist.gov/itl/ai-risk-management-framework "AI Risk Management Framework | NIST"
[11]: https://crfm.stanford.edu/report.html "Stanford CRFM"
[12]: https://huggingface.co/docs/transformers/en/index "Transformers"
[13]: https://hai.stanford.edu/ai-index/2025-ai-index-report "The 2025 AI Index Report | Stanford HAI"
[14]: https://hai-production.s3.amazonaws.com/files/hai_ai_index_report_2025.pdf "Artificial Intelligence Index Report 2025"
[15]: https://www.iea.org/reports/energy-and-ai "Energy and AI – Analysis - IEA"
[16]: https://www.oecd.org/en/publications/2025/11/competition-in-artificial-intelligence-infrastructure_69319aee.html "Competition in artificial intelligence infrastructure | OECD"
[17]: https://hai.stanford.edu/ai-index/2025-ai-index-report/science-and-medicine "Science and Medicine | The 2025 AI Index Report | Stanford HAI"
[18]: https://oecd.ai/ "The OECD Artificial Intelligence Policy Observatory - OECD.AI"
[19]: https://www.unesco.org/en/articles/recommendation-ethics-artificial-intelligence "Recommendation on the Ethics of Artificial Intelligence | UNESCO"
[20]: https://huggingface.co/docs/datasets/index "Datasets"
[21]: https://huggingface.co/docs/datasets/process "Process · Hugging Face"
[22]: https://pair.withgoogle.com/chapter/data-collection/ "Data Collection + Evaluation - People + AI Research"
[23]: https://arxiv.org/abs/1803.09010 "Datasheets for Datasets"
[24]: https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html "train_test_split-scikit-learn documentation"
[25]: https://scikit-learn.org/stable/common_pitfalls.html "Common pitfalls and recommended practices"
[26]: https://scikit-learn.org/stable/getting_started.html "Getting Started-scikit-learn documentation"
[27]: https://developers.google.com/machine-learning/crash-course/overfitting "Datasets, generalization, and overfitting | Machine Learning"
[28]: https://huggingface.co/docs/evaluate/index "Evaluate on the Hub"
[29]: https://huggingface.co/docs/evaluate/choosing_a_metric "Choosing a metric for your task"
[30]: https://docs.cloud.google.com/architecture/guidelines-for-developing-high-quality-ml-solutions "Guidelines for developing high-quality, predictive ML solutions"
[31]: https://huggingface.co/blog/data-measurements-tool "Introducing the Data Measurements Tool: an Interactive Interface to Evaluate Datasets"
[32]: https://huggingface.co/blog/dedup "Large-scale Near-deduplication Behind BigCode"
[33]: https://developers.google.com/machine-learning/crash-course/fairness "Fairness | Machine Learning"
[34]: https://docs.cloud.google.com/vertex-ai/docs/evaluation/intro-evaluation-fairness "Introduction to model evaluation for fairness | Vertex AI"
[35]: https://proceedings.iclr.cc/paper_files/paper/2024/file/bc39a59c49b731c51398ad6b12f301d3-Paper-Conference.pdf "Time Travel in LLMs: Tracing Data Contamination in Large Language Models"
[36]: https://nvlpubs.nist.gov/nistpubs/legacy/sp/nistspecialpublication800-122.pdf "Guide to Protecting the Confidentiality of Personally Identifiable Information (PII)"
[37]: https://csrc.nist.gov/pubs/sp/800/188/final "SP 800-188, De-Identifying Government Datasets"

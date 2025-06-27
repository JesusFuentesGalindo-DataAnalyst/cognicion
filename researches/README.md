# 📚 Investigaciones en metodo360

Bienvenid@ a las **Investigaciones** (_researches_) de `metodo360`.  
Aquí se organiza, documenta y traza el desarrollo de **todas las investigaciones** realizadas bajo este marco metodológico, es el ámbito general o el contenedor donde se desarrolla todo el proceso de conocimiento. Cada subcarpeta representa un **[objeto de estudio][OET]** que, a su vez, puede contener **líneas de investigación**, **investigaciones**, **estudios**, y **contribuciones** asociadas.

---

## 📑 Índice

- [🧩 ¿Qué Encontrarás Aquí?](#-qué-encontrarás-aquí)
- [📑 Índice General de Objetos de Estudio](#-índice-general-de-objetos-de-estudio)
- [📦 Estructura Recomendada](#-estructura-recomendada)
- [📝 ¿Cómo Contribuir?](#-cómo-contribuir)
- [🗃️ Recursos Adicionales](#️-recursos-adicionales)
- [🗂️ Principios de Organización](#️-principios-de-organización)

[INDEX]: #-índice
[M360]: ../README.md 'metodo360'
[LCCBYSA]: ./LICENSE-CC-BY-SA.md 'Licencia CC BY SA'
[LGPL]: ./LICENSE-GPLv3.md 'Licencia GPLv3'
[GLOSS]: ./glossary.md 'Glosario de las investigaciones'
[DOCS]: ../docs/README.md 'Documentación extendida'
[OET]: ../docs/foundations/object-study.md
[CTAIA]: ../docs/ai-assistant-configuration-guide.md 'Configuración de IA'
[CONTRIB]: ../CONTRIBUTING.md 'Cómo Contribuir'
[PTT]: ../templates/README.md 'Plantillas de trabajo'
[RESEARCHERS]: ../researchers/README.md 'Investigadores'
[AUT]: ../scripts/README.md 'Automatización'
[ASAI]: ../ai-assistance/README.md 'Asistente de IA'

<!-- Objetos de Estudio -->

[OE1]: ./el-conocimiento/object-study.md

<!-- Glosario -->

[TRAZABILIDAD]: ./glossary.md#trazabilidad
[TEORIA]: ./glossary.md#teoría
[COLABORAR]: ./glossary.md#colaborar
[RIGOR]: ./glossary.md#rigor
[EPISTEMOLOGIA]: ./glossary.md#epistemología
[PRECISION]: ./glossary.md#precisión
[MODULAR]: ./glossary.md#modular
[REUTILIZABLE]: ./glossary.md#reutilizable
[INTERCONECTADO]: ./glossary.md#interconectado-da
[VERIFICABLE]: ./glossary.md#verificable
[EXTENSIBLE]: ./glossary.md#extensible

💡 **Enlaces de interés:**  
🔗 [metodo360][M360] | [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI]

---

## 🧩 ¿Qué Encontrarás Aquí?

- **Objetos de Estudio:**  
  Cada carpeta principal corresponde a un objeto de estudio (por ejemplo, “el-conocimiento”).  
  Dentro de cada objeto se encuentran:

  - Líneas de investigación.
  - Investigaciones principales.
  - Estudios.
  - Contribuciones a estudios, documentadas y validadas

- **Plantillas y estructura común:**
  Todas las investigaciones siguen la estructura y plantillas definidas por `metodo360`, lo que facilita la [trazabilidad][TRAZABILIDAD], comparación y calidad de los aportes.

💡 **Enlaces de interés:**  
 🔗 [metodo360][M360] | [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | _[Índice][INDEX]_

---

## 📑 Índice General de Objetos de Estudio

> 💡 _Aquí se encuentra cada nuevo objeto de estudio creado usando la plantilla oficial._

| Objeto de Estudio      | Descripción breve                              | Estado        | Última actualización |
| ---------------------- | ---------------------------------------------- | ------------- | -------------------- |
| [El conocimiento][OE1] | _`Estudio de la naturaleza del conocimiento.`_ | ⚫ `Borrador` | `2025-06-26`         |
| ...                    | ...                                            | ...           | ...                  |

💡 **Enlaces de interés:**  
🔗 [metodo360][M360] | [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | _[Índice][INDEX]_

---

## 📦 Estructura Recomendada

```text
researches/
├── README.md                # Índice general y guía de navegación de los objetos de estudio.
├── glossary.md              # Glosario transversal de conceptos clave usados en todo el repositorio.
├── [objeto-de-estudio]/       # Carpeta de un Objeto de Estudio específico (ej., el-conocimiento/).
│   ├── object-study.md        # Documento estructural del objeto: definición, propiedades, rol.
│   ├── metadata.yaml          # Metadatos técnicos, estado, UUID, fechas clave, responsable, etc.
│   ├── glossary.md            # Glosario local con términos particulares del objeto.
│   ├── [linea-investigacion]/   # Enfoque epistemológico adoptado para explorar el objeto.
│   │   ├── line-research.md     # Marco teórico y metodológico de la línea de investigación.
│   │   ├── metadata.yaml        # Metadatos de la línea: enfoque, paradigma, responsable, etc.
│   │   └── [investigacion]/       # Proyecto concreto con objetivos delimitados.
│   │       ├── research.md        # Documento que presenta la justificación, objetivos y metodología.
│   │       ├── metadata.yaml      # Metadatos específicos de esta investigación.
│   │       └── studies/             # Estudios aplicados, desarrollados en el marco de esta investigación.
│   │           └── [estudio].md          # Carpeta de un estudio específico (análisis, observación, etc.).
│   │               ├── study.md          # Detalles técnicos del estudio (diseño, muestra, hallazgos).
│   │               ├── metadata.yaml     # Metadatos del estudio (autor, fechas, técnica).
│   │               └── contributions/    # Aportaciones derivadas del estudio (productos cognitivos).
│   │                   └── [id-contribucion]/          # Contribución individual.
│   │                       ├── contribution.md         # Contenido completo de la contribución.
│   │                       ├── validations/            # Validaciones realizadas sobre la contribución.
│   │                       │   └── [id-validation]/    # Carpeta de una validación específica.
│   │                       │       └── validation.md/  # Informe de validación.
│   │                       ├── conclusions/            # Conclusiones derivadas de la contribución.
│   │                       │   └── [id-conclusion]/    # Carpeta de conclusión específica.
│   │                       │       └── conclusion.md/  # Texto argumentativo final.
│   │                       ├── analysis/               # Análisis crítico del contenido de la contribución.
│   │                       │    └── [id-analisis]/     # Análisis específico.
│   │                       │        └── analysis.md    # Desarrollo del análisis.
│   │                       └── assets/                 # Archivos de apoyo (gráficos, datasets, imágenes, videos), se pueden vincular desde el archivo de la contribución.
│   └── ...
└── ...
```

> 📝 **Nota**: _La organización no es neutra: cada archivo y carpeta refleja un posicionamiento [teórico][TEORIA] sobre cómo se construye el conocimiento._

💡 **Enlaces de interés:**  
🔗 [metodo360][M360] | [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | _[Índice][INDEX]_

---

## 📝 ¿Cómo Contribuir?

| Paso                                 | 🤖 Asistente IA Web (ChatGPT - GitHub Copilot)                                              | 💻 IDE Local     | 🌐 GitHub Web    | 🗂️ GitHub Pages  |
| ------------------------------------ | ------------------------------------------------------------------------------------------- | ---------------- | ---------------- | ---------------- |
| 1. **Crear objeto de estudio**       | Usa `(crear-objeto)`                                                                        | En desarrollo... | En desarrollo... | En desarrollo... |
| 2. **Crear líneas de investigación** | Usa `(crear-línea-investigación)`                                                           | En desarrollo... | En desarrollo... | En desarrollo... |
| 3. **Crear Investigaciones**         | Usa `(crear-investigación)`                                                                 | En desarrollo... | En desarrollo... | En desarrollo... |
| 4. **Crear Estudio**                 | Usa `(crear-estudio)`                                                                       | En desarrollo... | En desarrollo... | En desarrollo... |
| 5 **Documentar contribuciones**      | Usa `(crear-contribución)`                                                                  | En desarrollo... | En desarrollo... | En desarrollo... |
| 6. **Validar o comentar aportes**    | Usa `(validar-contribución)` o `(analizar-contribución)` o `(conclusiones-de-contribución)` | En desarrollo... | En desarrollo... | En desarrollo... |

> 📝 **Nota**: _¿Tienes dudas o deseas agregar un nuevo objeto de estudio?  
> Consulta la guía rápida en el README principal del proyecto o solicita asistencia con los prompts disponibles._

💡 **Enlaces de interés:**  
🔗 [metodo360][M360] | [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | _[Índice][INDEX]_

---

## 🗃️ Recursos Adicionales

- [metodo360][M360]
- [Glosario general][GLOSS]
- [Plantillas oficiales de trabajo][PTT]
- [Investigadores][RESEARCHERS]
- [Automatización][AUT]
- Licencias
  - [CC BY-SA 4.0][LCCBYSA]
  - [GPLv3][LGPL]

💡 **Enlaces de interés:**  
🔗 [metodo360][M360] | [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | _[Índice][INDEX]_

---

## 🗂️ Principios de Organización

- **🔍 [Trazabilidad][TRAZABILIDAD]:**
  Cada avance, contribución o modificación queda registrada en la estructura del repositorio y/o en el historial de Git. Esto permite identificar el origen, autoría, propósito y evolución de cada elemento de investigación.
- **🤝 [Colaboración][COLABORAR]:**
  La documentación clara, modular y semántica permite que cualquier miembro del equipo (humano o asistente IA) pueda comprender, auditar o continuar un proceso sin ambigüedad.
- **🎯 [Rigurosidad][RIGOR]:**
  La estructura se basa en plantillas, glosarios y metadatos coherentes con estándares de calidad metodológica y principios epistémicos definidos en metodo360.
- **🧠 [Precisión][PRECISION] [Epistémica][EPISTEMOLOGIA]:**
  Toda la estructura está alineada con una visión del conocimiento como proceso dinámico, evolutivo y refinable, lo que implica que incluso los documentos pueden modificarse, criticarse o refinarse en ciclos sucesivos sin perder su trazabilidad ni su identidad.
- **♻️ [Modularidad][MODULAR] [Reutilizable][REUTILIZABLE]:**
  Cada nivel (objeto, línea, investigación, estudio, contribución) es autónomo pero interoperable, lo que permite:
  - Reutilizar marcos teóricos, metodologías o análisis en nuevos contextos.
  - Compartir bloques de conocimiento entre proyectos sin duplicación.
- **🧩 [Interconectividad][INTERCONECTADO]:**
  El conocimiento no se almacena de forma lineal, sino en red. Las relaciones entre objetos, líneas o contribuciones son parte explícita de la documentación, lo que permite construir mapas epistémicos y realizar navegación semántica.
- **🧪 [Verificabilidad][VERIFICABLE]:**
  Cada contribución está diseñada para ser validada explícitamente. Las carpetas de **validaciones** (`validations/`), **conclusiones** (`conclusions/`), **análisis** (`analysis/`) y **activos** (`assets/`) no son adornos, sino manifestaciones estructurales del principio científico de revisión crítica.
- **🏗️ [Extensibilidad][EXTENSIBLE]:**
  La estructura permite escalar desde una exploración individual hasta un repositorio de investigación colaborativa con múltiples líneas simultáneas, sin perder orden ni claridad.
- **💡 Inteligencia asistida:**
  El diseño anticipa y habilita la integración de asistentes de IA:
  - Para sugerencias automatizadas.
  - Para validación sintáctica o epistémica.
  - Para generación de commits, versiones y relaciones

> 📝 **Nota**: _Estos principios aseguran que la estructura no solo sea ordenada, sino que represente el conocimiento como proceso, y no como resultado congelado._

💡 **Enlaces de interés:**  
🔗 [metodo360][M360] | [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | _[Índice][INDEX]_

---

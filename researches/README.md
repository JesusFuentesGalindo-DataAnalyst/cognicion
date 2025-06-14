# 📚 Investigaciones en metodo360

Bienvenido a las **Investigaciones** (_researches_) de `metodo360`.  
Aquí se organiza, documenta y traza el desarrollo de **todas las investigaciones** realizadas bajo este marco metodológico. Cada subcarpeta representa un **objeto de estudio** que, a su vez, puede contener estudios, líneas de investigación y contribuciones asociadas.

---

## 📑 Índice

- [🧩 ¿Qué Encontrarás Aquí?](#-qué-encontrarás-aquí)
- [📑 Índice General de Objetos de Estudio](#-índice-general-de-objetos-de-estudio)
- [🗂️ Estructura Recomendada](#️-estructura-recomendada)
- [📝 ¿Cómo Contribuir?](#-cómo-contribuir)
- [🗃️ Recursos Adicionales](#️-recursos-adicionales)
- [🗂️ Principios de Organización](#️-principios-de-organización)

[INDEX]: #-índice
[M360]: ../README.md
[DOCS]: ../docs/README.md
[CONTRIB]: ../CONTRIBUTING.md
[PTT]: ../templates/README.md
[RESEARCHRS]: ../researchers/README.md
[AUT]: ../scripts/README.md
[ASAI]: ../ai-assistance/README.md
[CTAIA]: ../docs/ai-assistant-configuration-guide.md

---

## 🧩 ¿Qué Encontrarás Aquí?

- **Objetos de Estudio:**  
  Cada carpeta principal corresponde a un objeto de estudio (por ejemplo, “el-conocimiento”).  
  Dentro de cada objeto se encuentran:

  - Estudios principales
  - Líneas de investigación
  - Contribuciones documentadas y validadas

- **Plantillas y estructura común:**
  Todas las investigaciones siguen la estructura y plantillas definidas por `metodo360`, lo que facilita la trazabilidad, comparación y calidad de los aportes.

  💡 **Enlaces de interés:**
  🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | [Índice][INDEX]

---

## 📑 Índice General de Objetos de Estudio

> 💡 _Aquí se encuentra cada nuevo objeto de estudio creado usando la plantilla oficial._

| Objeto de Estudio | Descripción breve                                                                                                                        | Estado   | Última actualización |
| ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | -------- | -------------------- |
| El conocimiento   | _Estudio y Análisis integral del conocimiento, considerando los diferentes enfoques, metodologías y técnicas propias de cada paradigma._ | Borrador | 2025-06-11           |
| ...               | ...                                                                                                                                      | ...      | ...                  |

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | [Índice][INDEX]

---

## 🗂️ Estructura Recomendada

```text
researches/
└── [objeto-de-estudio]/
    ├── README.md
    ├── metadata.yaml
    ├── glossary.md
    ├── [estudio-principal]/
    │   ├── research.md
    │   ├── metadata.yaml
    │   └── lines-research/
    │       └── [línea]/
    │           ├── history.md
    │           ├── metadata.yaml
    │           └── contributions/
    │               └── c001/
    │                   ├── contribution.md
    │                   ├── content.md
    │                   ├── metadata.yaml
    │                   ├── validations/
    │                   ├── conclusions/
    │                   ├── assets/
    │                   └── analysis/
    └── ...
```

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | [Índice][INDEX]

---

## 📝 ¿Cómo Contribuir?

| Paso                              | 🤖 Asistente IA Web (ChatGPT - GitHub Copilot)        | 💻 IDE Local                                      | 🌐 GitHub Web                                               | 🗂️ GitHub Pages  |
| --------------------------------- | ----------------------------------------------------- | ------------------------------------------------- | ----------------------------------------------------------- | ---------------- |
| 1. **Crear objeto de estudio**    | Usa `(crear-objeto)`                                  | Ejecuta script `create_object.py`                 | Crea manualmente `object-study-readme.md` y `metadata.yaml` | En desarrollo... |
| 2. **Agregar estudios o líneas**  | Usa `(crear-estudio)` y `(crear-línea-investigación)` | Modifica el directorio `/researches/`             | Crea carpetas y archivos nuevos                             | En desarrollo... |
| 3. **Documentar contribuciones**  | Usa `(nueva-contribución)` o `(llenado-contribución)` | Rellena las plantillas localmente                 | Usa formularios en Issues/PRs                               | En desarrollo... |
| 4. **Actualizar README**          | Solicita a la IA que regenere índice                  | Edita manualmente `README.md`                     | Usa el editor en línea                                      | En desarrollo... |
| 5. **Validar o comentar aportes** | Usa `(validar-aporte)` o `(analizar-aporte)`          | Agrega contenido a `/validations/` o `/analysis/` | Comenta en PR o Issue                                       | En desarrollo... |

> 📝 **Nota**: _¿Tienes dudas o deseas agregar un nuevo objeto de estudio?  
> Consulta la guía rápida en el README principal del proyecto o solicita asistencia con los prompts disponibles._

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | [Índice][INDEX]

---

## 🗃️ Recursos Adicionales

- [metodo360][M360]
- [Glosario general del proyecto](./glossary.md)
- [Plantillas oficiales de trabajo][PTT]
- [Investigadores][RESEARCHRS]
- [Automatización][AUT]

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | [Índice][INDEX]

---

## 🗂️ Principios de Organización

- **Trazabilidad:** Cada avance queda registrado y es fácilmente localizable.
- **Colaboración:** Documentación clara para que cualquier miembro del equipo pueda entender, extender o validar el trabajo.
- **Rigurosidad:** Estructura y plantillas alineadas con los principios de calidad de `metodo360`.

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Asistente IA][ASAI] | [Índice][INDEX]

---

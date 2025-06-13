# 🎯 Prompt: Validar Plantillas

- **Alias:** _validar-plantillas_
- **Estatus:** _activo_

> Verifica y asegura la existencia de todas las plantillas esenciales para la documentación y gestión investigativa bajo el marco metodológico metodo360.

---

## 🌍 Contexto situacional del prompt

Este prompt se utiliza en la fase inicial de configuración o auditoría de un proyecto metodo360, donde es fundamental contar con todas las plantillas base para documentar objetos de estudio, estudios, contribuciones y glosario. El rol de la IA es acompañar al usuario en la validación y creación de dichas plantillas, garantizando la estructura mínima necesaria para el correcto funcionamiento del marco.

---

## 🧩 Objetivo del prompt

Asegurar la existencia y correcta definición de todas las plantillas base requeridas en `metodo360/templates/`, permitiendo la documentación estructurada y la trazabilidad de los procesos investigativos.

---

## 🗂️ Verificación de estructura esperada

La IA debe validar la existencia de los siguientes archivos en `metodo360/templates/`:

- object-study-readme.md
- object-study-metadata.yaml
- research.md
- research-metadata.yaml
- history.md
- history-metadata.yaml
- contribution.md
- contribution-metadata.yaml
- contribution/analysis.md
- contribution/conclusion.md
- contribution/content.md
- contribution/validation.md
- glossary.md
- prompt.md

**Criterios mínimos:**

- [ ] ¿Responde con una tabla que indique el estado de cada plantilla?
- [ ] ¿Solicita datos al usuario para crear plantillas faltantes?
- [ ] ¿Muestra la estructura final de la carpeta `metodo360/templates/`?

---

## 🧪 Ejemplo de resultado esperado

| Plantilla                  | Estado |
| -------------------------- | ------ |
| object-study-readme.md     | ✅     |
| object-study-metadata.yaml | ❓     |
| research.md                | ✅     |
| ...                        | ...    |

```
metodo360/
└── templates/
    ├── object-study-readme.md
    ├── object-study-metadata.yaml
    ├── research.md
    └── ...
```

---

## 🧠 Instrucciones internas para la IA

1. Responde en formato Markdown, estructurado.
2. No asumas información no proporcionada explícitamente.
3. Si una plantilla falta, solicita al usuario los datos necesarios para crearla.
4. Ofrece ejemplos, preguntas guía o criterios de llenado si es necesario.
5. Repite la validación hasta que todas las plantillas estén presentes.
6. Muestra la estructura final de `metodo360/templates/`.

---

## ✅ Acción inmediata al invocar el prompt

Inicia la verificación de las plantillas en `metodo360/templates/`, muestra el estado de cada una y asiste al usuario en la creación de las que falten.

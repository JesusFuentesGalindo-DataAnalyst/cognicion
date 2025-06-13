# 🎯 Prompt: [NOMBRE DEL PROMPT]

**Alias:** _[nombre-prompt]_

> Define una tarea específica que debe ejecutar la IA dentro del marco metodo360.

---

## 🌍 Contexto situacional del prompt

[Explica brevemente el entorno, fase del proceso o necesidad concreta que origina este prompt.
Incluye si corresponde: proyecto, tipo de contenido, rol esperado de la IA, condiciones de uso.]

---

## 🧩 Objetivo del prompt

[Especifica claramente qué se espera lograr con este prompt. Debe ser mensurable o evaluable.
Ejemplo: “Generar una plantilla editable en Markdown con los campos necesarios para documentar un objeto de estudio”.]

---

## 🗂️ Verificación de estructura esperada

[Incluye una lista de condiciones que debe cumplir la IA en su respuesta.
Puede incluir estructura de carpetas, elementos mínimos, sintaxis, formato de salida, etc.]

**Criterios mínimos:**

- [ ] ¿Responde con estructura en Markdown?
- [ ] ¿Incluye secciones ordenadas y nombradas como se pidió?
- [ ] ¿Usa ejemplos o etiquetas cuando es necesario?

---

## 🧪 Ejemplo de resultado esperado

[Ofrece un ejemplo sintético de salida válida que ilustraría cómo luce un buen resultado.]

**Ejemplo:**

```

metodo360/
├── prompts/
│   └── prompt-estructura.md
└── README.md

```

---

## 🧠 Instrucciones internas para la IA

**Ejemplo:**

```
1. Responde en formato Markdown, estructurado.
2. No asumas información no proporcionada explícitamente.
3. Si hay campos por definir, solicita al humano los valores faltantes.
4. Utiliza lenguaje técnico claro, evitando ambigüedades.
5. Si hay restricciones (idioma, formato, carpeta), respétalas al 100%.
6. Si el prompt es invocado desde otro prompt, respeta el flujo original.
```

---

## ✅ Acción inmediata al invocar el prompt

[Define qué debe hacer exactamente la IA al ser llamado este prompt.
Ejemplo: “Genera una plantilla vacía para documentar un objeto de estudio con campos editables”.]

---

<!--
Para la IA
¿Por qué esta estructura?

* **Separación Contexto vs Instrucción**: permite reusabilidad del prompt en múltiples flujos.
* **Verificación estructural explícita**: asegura outputs validados y consistentes.
* **Ejemplo incluido**: mejora la comprensión y reduce ambigüedades.
* **Instrucciones internas vs Acción inmediata**: distingue el *cómo operar* del *qué hacer ahora*.

-->

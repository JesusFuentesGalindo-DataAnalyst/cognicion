# 🎯 Prompt: Mostrar prompts

- **Alias:** _mostrar-prompts_
- **Estatus:** _activo_

> Permite listar todos los prompts definidos en los archivos de prompts y en el chat, mostrando su nombre, alias, ubicación y estado para facilitar su consulta y uso en la herramienta metodo360.

---

## 🌍 Contexto situacional del prompt

Este prompt se utiliza cuando el usuario necesita consultar rápidamente los prompts definidos en los archivos de prompts del proyecto metodo360, así como aquellas definidas en el chat actual. El objetivo es facilitar la navegación, reutilización y auditoría de los prompts implementados.

---

## 🧩 Objetivo del prompt

Listar en una tabla todas las definiciones de prompts encontrados en los archivos de `metodo360/ai-assistance/prompts/` y en el chat actual, indicando su nombre, alias, ubicación y estado (activo/inactivo).

---

## 🗂️ Verificación de estructura esperada

- Accede al directorio `metodo360/ai-assistance/prompts/`.
- Busca y extrae todas las definiciones de prompts en los archivos de prompts y en el chat actual.
- Valida la existencia de cada archivo.
- Muestra los resultados en una tabla con las columnas: Nombre de la Función, Ubicación y Estado.

**Criterios mínimos:**

- [ ] ¿Responde con estructura en Markdown?
- [ ] ¿Incluye tabla con nombre, ubicación y estado de cada función?
- [ ] ¿Valida la existencia de los archivos?
- [ ] ¿Incluye definiciones de prompt del chat si existen?

---

## 🧪 Ejemplo de resultado esperado

| Nombre del Prompt   | Alias         | Ubicación                         | Estado |
| ------------------- | ------------- | --------------------------------- | ------ |
| obtenerDatosUsuario | nombre-prompt | /ai-assistance/prompts/usuario.md | Activa |
| procesarEntrada     | nombre        | /ai-assistance/prompts/input.md   | Activa |

---

## 🧠 Instrucciones internas para la IA

1. Responde en formato Markdown, estructurado.
2. No asumas información no proporcionada explícitamente.
3. Si no se encuentran prompts definidos, indícalo claramente.
4. Si hay prompts definidos en el chat, inclúyelas en la tabla.
5. Valida la existencia de los archivos antes de mostrarlos.
6. Usa nombres y rutas relativos al proyecto.

---

## ✅ Acción inmediata al invocar el prompt

Busca y muestra en una tabla todas las funciones definidas en los archivos de prompts y en el chat, indicando su nombre, alias, ubicación y estado.

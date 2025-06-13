# 🎯 Prompt: Crear Línea de Investigación

- **Alias:** _crear-línea-investigación_
- **Estatus:** _activo_

> Permite a la IA crear y organizar la estructura de una línea de investigación dentro de un estudio, copiando absolutamente todo el contenido de las plantillas oficiales desde su origen hasta su destino, es decir, todas las líneas que integran cada archivo, sin realizar ninguna edición, asegurando que el formato, estructura y estilo se respeten sin quitar ni añadir elementos.  
> Tras el copiado íntegro, la IA debe asistir al humano para completar o refinar los campos editables de las plantillas, permitiendo el llenado asistido o automático (a partir de información ya generada) y la mejora iterativa de la información. En cualquier caso se le pregunta al humano cómo quiere continuar.

---

## 🌍 Contexto situacional del prompt

Se utiliza para documentar una nueva línea de investigación asociada a un estudio existente. La IA asiste en la creación de la carpeta y en la generación de los archivos principales, asegurando que cada archivo se cree copiando íntegramente todas las líneas de la plantilla oficial desde su ubicación original, sin editar los campos, sin modificar la estructura ni el contenido no editable.  
Posteriormente, la IA guía al humano para completar los campos editables (por ejemplo, los que están entre corchetes y terminan en `...`), ofreciendo preguntas orientadoras, sugerencias y criterios de calidad para cada sección y puede inferir valores a partir de información ya generada.

---

## 🧩 Objetivo del prompt

Generar la carpeta de la línea de investigación y los archivos `metadata.yaml` y `history.md` bajo la ruta correspondiente, asegurando que cada archivo se cree copiando absolutamente todas las líneas de la plantilla respectiva desde su origen, y sin editar los campos, sin quitar ni añadir elementos.  
Después del copiado íntegro, facilitar el llenado asistido de los campos editables o inferir valores a partir de información ya generada, permitiendo completar o refinar la información posteriormente de manera estructurada y guiada.

---

## 🗂️ Verificación de estructura esperada

**Criterios mínimos:**

- [ ] ¿Responde en estructura Markdown?
- [ ] ¿Solicita objeto de estudio, estudio y nombre de la línea?
- [ ] ¿Genera la estructura y archivos base bajo `metodo360/researches/[objeto]/[estudio]/lines-research/[línea]/`?
- [ ] ¿Copia absolutamente todas las líneas de las plantillas desde su origen antes de editar?
- [ ] ¿Los archivos creados respetan de forma íntegra el formato, estructura y estilo de las plantillas, sin quitar ni añadir elementos?
- [ ] ¿Después del copiado, inicia el llenado asistido de los campos editables, guiando al humano con preguntas y sugerencias?
- [ ] ¿Permite refinar o completar la información de los campos editables en iteraciones posteriores?
- [ ] ¿Se ofrecieron propuestas para el llenado automático de campos editables, a partir de información ya generada?

---

## 🧪 Ejemplo de resultado esperado

**Se crearon todos los archivos:** 2/2

```
metodo360/
└── researches/
    └── el-conocimiento/
        └── epistemologia/
            └── lines-research/
                └── el-conocimiento/
                    ├── metadata.yaml
                    └── history.md
```

**Llenado asistido:**

- ¿Cuál es el propósito principal de esta línea de investigación?  
  _(Sugerencia: Resume en una frase el objetivo de la línea.)_

- ¿Qué hitos históricos o antecedentes relevantes deben documentarse?  
  _(Ejemplo: autores clave, teorías principales, etc.)_

---

## 🧠 Instrucciones internas para la IA

1. Valida si hay una creación de línea de investigación en marcha. Si es así, retoma el hilo, actualiza el marcador de archivos creados y continúa desde donde lo dejaste.
2. Si no hay una creación en marcha:
   1. Solicita objeto de estudio, estudio y nombre de la línea.
   2. Crea la carpeta correspondiente.
   3. (copy-paste)
      1. Utiliza los archivos `metodo360/templates/history-metadata.yaml` y `metodo360/templates/history.md` como origen.
      2. Utiliza la carpeta creada como destino.
      3. Renombra los archivos si es necesario tras copiar.
      4. Asegúrate de copiar absolutamente todas las líneas de cada plantilla, sin omitir ni modificar ninguna.
   4. No elimines ni agregues elementos.
3. Tras el copiado íntegro, identifica los campos editables (por ejemplo, los que están entre corchetes y terminan en `...`) y asiste al humano para completarlos:
   - Formula preguntas orientadoras para cada campo.
   - Ofrece sugerencias, ejemplos y criterios de calidad.
   - Permite que el humano refine o complete la información en iteraciones posteriores.
   - Ofrece sugerencias de auto llenado a partir de información ya generada.
4. Muestra los resultados del prompt y el avance del llenado asistido.

---

## ✅ Acción inmediata al invocar el prompt

Solicita los datos y genera la estructura base de la línea de investigación, copiando y pegando absolutamente todas las líneas de las plantillas oficiales sin editar los campos requeridos, asegurando que cada archivo respete de forma íntegra el formato, estructura y estilo de la plantilla correspondiente.  
Después, inicia el llenado asistido de los campos editables, guiando al humano con preguntas y sugerencias para completar o refinar la información, si es posible autorellena los campos que se puedan inferir a partir de información ya generada.

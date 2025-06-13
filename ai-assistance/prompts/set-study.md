# 🎯 Prompt: Crear Estudio

**Alias:** _crear-estudio_

> Permite a la IA crear y organizar la estructura de un estudio dentro de un objeto de estudio en `metodo360/researches/`, copiando absolutamente todo el contenido de las plantillas oficiales desde su origen hasta su destino, es decir, todas las líneas que integran cada archivo, sin realizar ninguna edición, asegurando que el formato, estructura y estilo se respeten sin quitar ni añadir elementos.  
> Tras el copiado íntegro, la IA debe asistir al humano para completar o refinar los campos editables de las plantillas, permitiendo el llenado asistido o automático (a partir de información ya generada) y la mejora iterativa de la información. En culquier caso se le pregunta al humano como quiere continuar.

---

## 🌍 Contexto situacional del prompt

Este prompt se utiliza cuando se requiere documentar un nuevo estudio asociado a un objeto de estudio existente en el marco de metodo360. La IA asiste en la creación de la carpeta correspondiente y en la generación de los archivos principales, asegurando que cada archivo se cree copiando íntegramente todas las líneas de la plantilla oficial desde su ubicación original, sin editar los campos, sin modificar la estructura ni el contenido no editable.  
Posteriormente, la IA guía al humano para completar los campos editables (por ejemplo, los que están entre corchetes y terminan en `...`), ofreciendo preguntas orientadoras, sugerencias y criterios de calidad para cada sección y inferir valores a partir de información ya generada. En culquier caso se debe preguntar al humano como quiere continuar.

---

## 🧩 Objetivo del prompt

Generar la carpeta del estudio y los archivos `metadata.yaml` y `research.md` bajo la ruta correspondiente, asegurando que cada archivo se cree copiando absolutamente todas las líneas de la plantilla respectiva desde su origen, y sin editar los campos, sin quitar ni añadir elementos.  
Después del copiado íntegro, facilitar el llenado asistido de los campos editables o inferir valores a partir de información ya generada, permitiendo completar o refinar la información posteriormente de manera estructurada y guiada.

---

## 🗂️ Verificación de estructura esperada

**Criterios mínimos:**

- [ ] ¿Responde en estructura Markdown?
- [ ] ¿Solicita objeto de estudio y nombre del estudio?
- [ ] ¿Genera la estructura y archivos base bajo `metodo360/researches/[objeto]/[nombre-estudio]/`?
- [ ] ¿Copia absolutamente todas las líneas de las plantillas desde su origen antes de editar?
- [ ] ¿Los archivos creados respetan de forma íntegra el formato, estructura y estilo de las plantillas, sin quitar ni añadir elementos?
- [ ] ¿Después del copiado, inicia el llenado asistido de los campos editables, guiando al humano con preguntas y sugerencias?
- [ ] ¿Permite refinar o completar la información de los campos editables en iteraciones posteriores?
- [ ] ¿Se ofrecieron propuestas para el llenado automático de campos editables, a partir de información ya?

---

## 🧪 Ejemplo de resultado esperado

**Se crearon todos los archivos:** 3/3

```
metodo360/
└── researches/
    └── el-conocimiento/
        └── la-epistemologia/
            ├── metadata.yaml
            └── research.md
```

**Llenado asistido:**

- ¿Cuál es el objetivo principal de este estudio?  
  _(Sugerencia: Describe brevemente la finalidad del estudio en una o dos frases.)_

- ¿Qué metodología se empleará?  
  _(Opciones: revisión bibliográfica, estudio de caso, análisis comparativo, etc.)_

---

## 🧠 Instrucciones internas para la IA

1. Valida si hay una creación de estudio en marcha. Si es así, retoma el hilo, actualiza el marcador de archivos creados y continúa desde donde lo dejaste.
2. Si no hay una creación en marcha:
   1. Solicita el objeto de estudio y el nombre del estudio.
   2. Crea la carpeta correspondiente con el siguiente formato de nombre: `formato-de-informacion`.
   3. (copy-paste)
      1. Utiliza los archivos `metodo360/templates/research.md` y `metodo360/templates/research-metadata.yaml` como origen.
      2. Utiliza la carpeta creada como destino.
      3. Renombra el archivo research-metadata.yaml a metadata.yaml tras copiarlo.
      4. Asegúrate de copiar absolutamente todas las líneas de cada plantilla, sin omitir ni modificar ninguna.
   4. No elimines ni agregues elementos.
3. Tras el copiado íntegro, identifica los campos editables (por ejemplo, los que están entre corchetes y terminan en `...`) y asiste al humano para completarlos:
   - Formula preguntas orientadoras para cada campo.
   - Ofrece sugerencias, ejemplos y criterios de calidad.
   - Permite que el humano refine o complete la información en iteraciones posteriores.
   - Ofrece sugerencias de auto llenado a partir de información ya generada, relacionada con el objeto de estudio.
4. Muestra los resultados del prompt y el avance del llenado asistido.

---

## ✅ Acción inmediata al invocar el prompt

Solicita los datos necesarios y genera la estructura base del estudio, copiando y pegando absolutamente todas las líneas de las plantillas oficiales sin editar los campos requeridos, asegurando que cada archivo respete de forma íntegra el formato, estructura y estilo de la plantilla correspondiente.  
Después, inicia el llenado asistido de los campos editables, guiando al humano con preguntas y sugerencias para completar o refinar la información, si es posible autorellena los campos que se puedan inferir a partir de información ya generada, relacionada con el objeto de estudio.

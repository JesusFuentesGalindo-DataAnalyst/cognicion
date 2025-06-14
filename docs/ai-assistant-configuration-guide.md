# 🚀 Guía rápida de configuración del asistente de IA

Esta guía rápida está diseñada para acompañarte en la configuración de tu **asistente de investigación IA**, adaptando herramientas como **GitHub Copilot y ChatGPT** al marco metodológico del `metodo360`. Aquí encontrarás instrucciones prácticas para especificar un **_contexto_** que pueda ser usado en estas herramientas de IA, optimizando el llenado de plantillas, la documentación estructurada y la colaboración.

El **_contexto_** está diseñado para ayudarte a escribir, organizar ideas, llenar documentos o trabajar en equipo de forma más sencilla.

No necesitas ser programador o experta en tecnología: El contexto definido te permite aprovechar la IA como asistente mientras investigas, directamente desde tu navegador.

> 💡 _El objetivo es que puedas crear conocimiento de forma colaborativa, segura y ordenada, con ayuda de herramientas que sugieren, completan o documentan por ti (¡pero tú decides siempre!)_.

**¿Qué encontrarás aquí?**

- Cómo configurar GitHub Copilot como apoyo metodológico.
- Cómo configurar ChatGPT como apoyo metodológico.
- Consejos y buenas prácticas para documentar y colaborar.
- Qué hacer si tienes dudas o problemas.

---

## 📑 Índice

- [🤖 Uso de GitHub Copilot](#-uso-de-github-copilot)
- [🤖 Uso de ChatGPT](#-uso-de-chatgpt)
- [💡 Consejos y Mejores prácticas](#-consejos-y-mejores-prácticas)
- [🤷‍♀️ ¿Dudas o Problemas?](#️-dudas-o-problemas)
- [🗃️ Recursos Adicionales](#️-recursos-adicionales)

[INDEX]: #-índice
[M360]: ../README.md 'metodo360'
[DOCS]: ./README.md 'Documentación extendida'
[CONTRIB]: ../CONTRIBUTING.md 'Cómo contribuir'
[PD]: ../templates/README.md 'Plantillas de trabajo'
[CAIAM360]: ../ai-assistance/README.md 'Asistente de IA'
[AIASST]: ../ai-assistance/trigger.md 'Lanzador de Contexto'
[DOGHS]: https://docs.github.com/es/copilot/using-github-copilot/copilot-spaces 'Documentación de GitHub Copilot Spaces'
[GHS]: https://github.com/copilot/spaces 'GitHub Copilot Spaces'
[DGHCC]: https://docs.github.com/es/copilot/using-github-copilot/copilot-chat 'Documentación de GitHub Copilot Chat'
[GHCC]: https://github.com/copilot 'GitHub Copilot Chat'
[IPGHC]: https://docs.github.com/es/copilot/using-github-copilot/copilot-chat/prompt-engineering-for-copilot-chat 'Ingeniería de Prompts de GitHub Copilot'
[DCGPT]: https://help.openai.com/en/collections/3742473-chatgpt 'Documentación oficial de ChatGPT'
[CGPT]: https://chatgpt.com/ 'ChatGPT'
[IPCGPT]: https://help.openai.com/en/articles/10032626-prompt-engineering-best-practices-for-chatgpt 'Ingeniería de Prompts de ChatGPT'
[CAGH]: https://docs.github.com/es/get-started/start-your-journey/creating-an-account-on-github 'Crear una cuenta en GitHub'
[GHCAC]: https://github.com/settings/copilot/features 'Habilitar y configurar GitHub Copilot'
[ISSUE]: https://github.com/JesusFuentesGalindo-DataAnalyst/metodo360/issues 'Issues de Jesús Fuentes Galindo Analista'

---

## 🤖 Uso de GitHub Copilot

Esta guía te orienta para aprovechar [GitHub Copilot Spaces][DOGHS] como entorno de edición, prototipado y llenado asistido con IA en el marco metodológico de `metodo360`.

### ⭐ Ventajas para `metodo360`

- Permite el llenado asistido de plantillas y documentación con Copilot directamente en notebooks, Markdown o YAML.
- Facilita la colaboración remota y la revisión de aportes en un entorno reproducible.
- Ideal para prototipar análisis, visualizar resultados, documentar líneas investigativas y compartir avances.
- Sin necesidad de instalar nada localmente: solo requiere navegador y cuenta GitHub.

> 💡 _Trabajar desde GitHub Copilot Spaces garantiza que todas las funciones de colaboración y llenado asistido funcionen de forma óptima._

### 📋 Pasos para comenzar con GitHub Copilot

#### 🛠️ ¿Qué necesitas?

- [Crear una cuenta activa en GitHub][CAGH].
- [GitHub Copilot activado y configurado][GHCAC].
- [Acceso a GitHub Spaces][GHS] (al momento de esta guía, puede requerir acceso beta).

#### 1. Accede a GitHub Spaces

1. [Visita GitHub Copilot Spaces][GHS]
2. Si es necesario, solicita acceso beta.

#### 2. Crea un nuevo Space

1. Presiona **Nuevo espacio** (New Space).
2. Llena los campos **nombre** (name), **icono** (icon) y **propietario** (owner) con información de tu interés.
3. En el campo **instrucciones** (instructions) copia y pega el contenido de [`ai-assistance/trigger.md`][AIASST].
4. En el campo **adjuntos** (attachments) presiona **agregar** (add) y después presiona **añadir archivos, carpetas...** (add files, folders...).
   1. En el cuadro de selección presiona en el repositorio que contiene el `metodo360`.
      - Si estás trabajando con una copia, selecciona el repositorio que contiene el `metodo360`.
      - Si deseas trabajar con el repositorio original, en el cuadro de búsqueda escribe: `JesusFuentesGalindo-DataAnalyst/metodo360` y selecciónalo.
   2. Selecciona los archivos y carpetas siguientes:
      - `researches/el-conocimiento`
      - `ai-assistance`
      - `templates`
      - `README.md`
      - `LICENSE-CC-BY-SA.md`
      - `LICENSE-GPLv3.md`
5. Presiona el botón **agregar** (add)
6. Presiona el boto **guardar** (save).
7. Espera a que se procesen los archivos y se prepare el entorno.

#### 3. Comprueba el entorno

1. Asegúrate de que GitHub Copilot esta siguiendo el contexto definido en el espacio.
   1. Una vez guardado el espacio, te mostrara un ventana con un **cuadro de entrada** (input box), el cual, está completamente habilitado para que comiences a usar [GitHub Copilot Chat][GHCC], con el contexto establecido en [GitHub Copilot Spaces][GHS].
   2. Escribe en el cuadro de entrada el siguiente prompt: `¿Qué puedes hacer?`.
      - Deberá mostrarte una referencia como: **_"Trabajo bajo el marco metodológico metodo360"_**, y más información relacionada (en cada chat puede variar la respuesta).
      - Prueba escribiendo un prompt definido en el contexto del `metodo360`, p. ej. **`(mostrar-prompts)`**.
      - Debe mostrarte información de todos los prompts definidos en el contexto.
2. En caso de que GitHub Copilot no muestre información relacionada con el contexto del `metodo360`, elimina el espacio y vuelve a crearlo.
   1. Ve a tus [espacios][GHS].
   2. Elimina el **Espacio que creaste**.
      - Selecciónalo y presiona el boto **menú** (tres puntos).
      - Presiona el boto **eliminar** (delete).
      - Confirma su eliminación.
   3. Crea un nuevo espacio siguiendo las instrucciones desde [el punto 2](#2-crea-un-nuevo-space)
3. En caso de que el entorno esté correctamente configurado, puedes comenzar a chatear con GitHub Copilot, el cual te guiará durante tu proceso de investigación.

Podrás escribir y editar Markdown, YAML o notebooks y recibir sugerencias inteligentes para el llenado asistido de plantillas según el marco de `metodo360`.

> 📝 **Nota**: _Para que el contexto funcione con GitHub Copilot Chat, debes crear los chats desde GitHub Copilot Spaces. Basta con solo escribir un prompt en el cuadro de entrada del espacio seleccionado._

#### 4. Trabaja y colabora

- Edita archivos y plantillas, crea nuevas investigaciones, etc.
- Utiliza los prompts y plantillas de metodo360 como guía metodológica.
- Sincroniza tus cambios con tu repositorio de GitHub para integrarlos al flujo de contribuciones.

> _¡Listo! Ahora puedes aprovechar GitHub Spaces y Copilot para co-crear y documentar conocimiento en metodo360 de manera asistida, reproducible y colaborativa._

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Índice][INDEX]

---

## 🤖 Uso de ChatGPT

> ### <center>En desarrollo...<center>

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Índice][INDEX]

---

## 💡 Consejos y Mejores Prácticas

- Utiliza el llenado asistido: Copilot y ChatGPT pueden sugerir contenido para los campos `[valor...]` de las plantillas.
- Documenta cada paso y aprovecha los notebooks para registrar razonamientos, experimentos o visualizaciones.
- Mantén la estructura de carpetas y archivos propuesta por `metodo360` para asegurar compatibilidad y trazabilidad.
- Si tu repositorio es público, recuerda no compartir información sensible.
- Si deseas saber más sobre el uso de **prompts** visita: [Ingeniería de Prompts][IPGHC]

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Índice][INDEX]

---

## 🤷‍♀️ ¿Dudas o Problemas?

- Consulta los [issues][ISSUE] del repositorio.
- Abre un [issue][ISSUE] nuevo describiendo tu problema.
- Consulta la [documentación extendida][DOCS]

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Índice][INDEX]

---

## 🗃️ Recursos Adicionales

- [metodo360][M360]
- [Asistente de IA][CAIAM360]
- [Plantillas de trabajo oficiales de metodo360][PD]
- [Documentación oficial de GitHub Copilot Spaces][DOGHS]
- [GitHub Copilot Spaces][GHS]
- [Documentación oficial de GitHub Copilot Chat][DGHCC]
- [GitHub Copilot Chat][GHCC]
- [Ingeniería de Prompts de GitHub Copilot][IPGHC]
- [Documentación oficial de ChatGPT][DCGPT]
- [ChatGPT][CGPT]
- [Ingeniería de Prompts de ChatGPT][IPCGPT]

💡 **Enlaces de interés:**
🔗 [Documentación][DOCS] | [Cómo contribuir][CONTRIB] | [Índice][INDEX]

---

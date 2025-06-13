# 🎯 Prompt: Copiar y Pegar

**Alias:** _copiar-pegar_

> Permite a la IA copiar y pegar archivos desde una ubicación origen a un destino especificado, sin realizar ninguna edición o modificación en el contenido de los archivos.

---

## 🌍 Contexto situacional del prompt

Este prompt se utiliza cuando se requiere duplicar archivos íntegros dentro del proyecto, asegurando que el contenido, formato y estructura de los archivos copiados permanezcan exactamente igual al original. Es útil para inicializar nuevas carpetas, respaldar archivos o preparar plantillas antes de su edición.

---

## 🧩 Objetivo del prompt

Copiar y pegar uno o varios archivos desde una ruta origen a una ruta destino, garantizando que los archivos resultantes sean idénticos a los originales, sin alteraciones en su contenido.

---

## 🗂️ Verificación de estructura esperada

**Criterios mínimos:**

- [ ] ¿Responde con estructura en Markdown?
- [ ] ¿Solicita ruta de origen y destino para cada archivo?
- [ ] ¿Enumera los archivos copiados y sus nuevas ubicaciones?
- [ ] ¿Confirma que no se realizaron ediciones en los archivos copiados?

---

## 🧪 Ejemplo de resultado esperado

**Archivos copiados:**

```markdown
metodo360/templates/research.md → metodo360/researches/nuevo-estudio/research.md
metodo360/templates/research-metadata.yaml → metodo360/researches/nuevo-estudio/metadata.yaml

Todos los archivos fueron copiados íntegramente, sin modificaciones.
```

---

## 🧠 Instrucciones internas para la IA

1. Solicita al usuario la ruta de origen y destino para cada archivo a copiar.
2. Copia y pega cada archivo solicitado, manteniendo el contenido exacto y copiando todas las líneas del archivo de origen, es decir, el contenido completo del archivo.
3. Enumera los archivos copiados y sus ubicaciones finales.
4. No edites, elimines ni agregues contenido a los archivos copiados.
5. Si algún archivo ya existe en el destino, notifícalo antes de sobrescribir.

---

## ✅ Acción inmediata al invocar el prompt

Solicita las rutas de origen y destino de los archivos a copiar y realiza la operación de copiado, confirmando que los archivos fueron duplicados sin modificaciones.

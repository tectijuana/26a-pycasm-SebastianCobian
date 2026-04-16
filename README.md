# Proyecto Integrador: Integración Python + C + ARM64 Assembly

**Autor:** Sebastian Cobian  
**Materia:** Lenguajes de Interfaz  
**Institución:** Instituto Tecnológico de Tijuana (ITT)

## 1. Introducción
Este proyecto demuestra la interoperabilidad entre lenguajes de alto nivel (Python) y bajo nivel (ARM64 Assembly) utilizando C como puente a través de `ctypes`. Se busca optimizar operaciones matemáticas críticas para entender el manejo de registros y memoria en la arquitectura ARM64.

## 2. Desarrollo Técnica
- **ARM64 Assembly:** Implementación de funciones usando la convención de llamadas (ABI), aprovechando registros `x0-x7` para parámetros.
- **C Bridge:** Actúa como interfaz para exportar los símbolos de ensamblador.
- **Python:** Gestiona la carga de la librería dinámica `.so` y realiza pruebas de estrés.

## 3. Análisis de Rendimiento
| Método | Tiempo (Suma 100k elementos) |
| :--- | :--- |
| **Python Puro** | 12.5 ms (Ejemplo) |
| **C** | 0.8 ms (Ejemplo) |
| **ARM64 ASM** | 0.4 ms (Ejemplo) |

*Análisis:* El ensamblador es más rápido debido al control directo de los registros del CPU y la eliminación del "overhead" del intérprete de Python.

## 4. Evidencias
- **Ejecución en Asciinema:** [[LINK](https://asciinema.org/a/Ezsl1uJrjq0kwt51)]
- **Depuración con GDB:** Se validó el uso de `info registers` y `stepi` para observar el flujo de datos en los registros `x0` y `x1`.

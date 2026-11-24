# PGPI - Practica 9

## Gestion de la configuracion del software

Asignatura: Planificacion y Gestion de Proyectos Informaticos
Curso: 2026/2027
Repositorio: https://github.com/Haitaam/PGPI-Practica-9

## Descripcion

Proyecto de simulacion usado para practicar la gestion de la configuracion
del software con Git, GitHub y Jira. Cada tarea se desarrolla en su propia rama
y cada miembro del equipo trabaja en una rama personal derivada de ella.

## Equipo

- Haitam El Ahmar (responsable de la Tarea 1)
- Sami (responsable de la Tarea 2)

## Tareas

### Tarea 1
- Responsable: Haitam
- Participantes: Haitam y Sami
- Rama: `Tarea1` (creada desde `main`)
- Ramas personales: `Tarea1_Haitam`, `Tarea1_Sami` (creadas desde `Tarea1`)

Archivos: `tarea1_config.txt`, `tarea1_modulo.txt`.

### Tarea 2
- Responsable: Sami
- Participantes: Sami y Haitam
- Rama: `Tarea2` (creada desde `main`)
- Ramas personales: `Tarea2_Sami`, `Tarea2_Haitam` (creadas desde `Tarea2`)

Archivos: `tarea2_config.txt`, `tarea2_modulo.txt`.

## Rama principal

- `main`: integracion final del proyecto. Todavia no contiene las tareas
  integradas porque faltan los commits de Sami en sus ramas personales.

## Estado de las ramas

| Rama | Estado |
| --- | --- |
| `Tarea1_Haitam` | 2 commits reales, pushado a GitHub, integrado en `Tarea1` |
| `Tarea2_Haitam` | 2 commits reales, pushado a GitHub, integrado en `Tarea2` |
| `Tarea1_Sami` | Creada desde `Tarea1`, preparada para Sami; sin commits de Sami todavia |
| `Tarea2_Sami` | Creada desde `Tarea2`, preparada para Sami; sin commits de Sami todavia |
| `Tarea1` | Contiene los cambios de Haitam; pendiente de los cambios de Sami |
| `Tarea2` | Contiene los cambios de Haitam; pendiente de los cambios de Sami |

## Versiones

- `v1.0`: pendiente. Se creara cuando `Tarea1` y `Tarea2` esten completas
  (incluidos los commits de Sami) y se hayan integrado en `main`.
- `v1.1`: pendiente. Se creara despues de la correccion de la incidencia de Jira.

## Integracion con Jira

- Proyecto Jira: https://haitamelahmar.atlassian.net/jira/software/projects/SCRUM/boards/1/backlog
- Incidencia real: SCRUM-1 - "Falta validacion de los parametros de configuracion del modulo"
  https://haitamelahmar.atlassian.net/browse/SCRUM-1
- La app "GitHub for Atlassian" esta instalada y conectada a la organizacion
  Haitaam de GitHub, con acceso a este repositorio. Por ello, la rama y los
  commits que contienen `SCRUM-1` aparecen en el panel Development de la
  incidencia.

### Correccion de SCRUM-1

- Rama: `SCRUM-1` (creada desde `main`).
- Fix: se anade `validar_config.ps1`, que comprueba que `entorno`, `idioma` y
  `modo_depuracion` tengan valores permitidos en los archivos de configuracion.
- Uso:
  `powershell -ExecutionPolicy Bypass -File ./validar_config.ps1 -ConfigPath tarea2_config.txt`
- El script devuelve 0 si la configuracion es valida, 1 si hay valores
  incorrectos o parametros ausentes y 2 si el archivo no existe.

La rama `SCRUM-1` se fusiona en `main` y se etiqueta como `v1.1`.

Nota: `v1.0` sigue pendiente porque las ramas personales de Sami
(`Tarea1_Sami` y `Tarea2_Sami`) no tienen sus commits reales todavia. No se
integraran `Tarea1` ni `Tarea2` en `main` como trabajo "completo" hasta que
Sami haya contribuido.

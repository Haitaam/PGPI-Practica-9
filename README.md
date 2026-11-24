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

Pendiente. No hay una instancia de Jira configurada ni autenticada en este
entorno, por lo que todavia no existe una incidencia real ni una clave de
incidencia. No se registrara ninguna clave inventada.

Cuando este disponible:
1. Conectar este repositorio de GitHub con el proyecto de Jira.
2. Crear una incidencia de configuracion y anotar su clave real.
3. Crear una rama `SCRUM-<clave>` desde `main`.
4. Hacer una correccion real y un commit con la clave en el mensaje.
5. Integrar la rama en `main`, hacer push y crear el tag `v1.1`.

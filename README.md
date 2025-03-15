# ProyectoIA
# Proyecto: Sistema de Recomendación de Productos en Prolog

## Descripción
Este proyecto implementa un **sistema de recomendación de productos** utilizando **Prolog**. Se modela un grafo donde los **usuarios** están conectados con los **productos** que han comprado, y estos productos están categorizados. También se incluyen calificaciones de los productos, lo que permite realizar consultas y generar recomendaciones basadas en relaciones dentro del grafo.

## Estructura del Proyecto
El proyecto está compuesto por los siguientes elementos:

- **Base de datos de hechos**: Contiene la información de usuarios, productos, compras y calificaciones.
- **Reglas de conexión (Grafo)**: Define las relaciones entre usuarios, productos y categorías.
- **Consultas de recomendación**: Permite obtener productos recomendados para un usuario basándose en distintos criterios.

## Uso y Ejecucuion del Programa

### Ejecución
1. **Abrir SWI-Prolog**. Puede abrirse en el navegador por medio de este [link](https://swish.swi-prolog.org/).
2. **Diseño de las variables**:
   ```prolog
   % Definición de usuarios
   usuario(maria).
   usuario(carlos).
   usuario(juan).
   usuario(esteban).
   usuario(miguel).

   % Definición de productos y categorías
   producto(televisor, electronico).
   producto(smartphone, electronico).
   producto(sillon, mueble).
   producto(silla, mueble).
   producto(reloj, accesorio).
   producto(collar, accesorio).
   producto(air_frier, cocina).
   producto(olla, cocina).
   producto(gta, juegos).
   producto(fifa, juegos).

   % Definición de compras de usuario
   compra(maria, televisor).
   compra(maria, sillon).
   compra(carlos, fifa).
   compra(carlos, smartphone).
   compra(juan, reloj).
   compra(juan, olla).
   compra(esteban, silla).
   compra(esteban, collar).
   compra(miguel, gta).
   compra(miguel, air_frier).

   % Definición de calificaciones de productos (1-5)
   calificacion(maria, televisor, 3).
   calificacion(maria, sillon, 4).
   calificacion(carlos, smartphone, 4).
   calificacion(carlos, fifa, 5).
   calificacion(juan, reloj, 5).
   calificacion(juan, collar, 2).
   calificacion(esteban, silla, 1).
   calificacion(esteban, collar, 1).
   calificacion(miguel, air_frier, 3).
   calificacion(miguel, gta, 5).

3. **Analizar Grafo Generado por medio del diseño de las variables**


4. **Ejecutar consultas** para interactuar con el sistema:
   
   - **Ver productos comprados por un usuario:**
     ```prolog
     ```
   - **Ver conexiones entre productos de la misma categoría:**
     ```prolog
     ```
   - **Buscar una ruta entre un usuario y un producto:**
     ```prolog
     ```





## Presentado Por
- Natalia Echeverry Salcedo
- Esteban Altamiranda Julio
- Miguel Bayona Rivera
- Juan Morales Espitia

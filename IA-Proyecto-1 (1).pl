usuario(maria). 
usuario(carlos). 
usuario(juan). 
usuario(esteban). 
usuario(miguel).

producto(televisor, electronico).   
producto(smartphone, electronico).  
producto(sillon, mueble).  
producto(silla, mueble).  
producto(reloj, accesorio).  
producto(collar, accesorio).  
producto(air_frier, cocina). 
producto(olla, cocina). 
producto(gta,juegos). 
producto(fifa,juegos). 

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

calificacion(maria, televisor, 3).  
calificacion(maria, sillon, 4).  
calificacion(carlos, smartphone, 4).  
calificacion(carlos, fifa,5). 
calificacion(juan, reloj, 5). 
calificacion(juan, colla,2). 
calificacion(esteban, silla, 1). 
calificacion(esteban, collar,1). 
calificacion(miguel, air_frier, 3). 
calificacion(miguel, gta,5). 



recomendar_recursivo(_, [], []).

recomendar_recursivo(Usuario, [ProductoComprado|Resto], ListaFinal) :-
    findall(ProductoRecomendado, 
        (producto(ProductoRecomendado, Categoria), 
         producto(ProductoComprado, Categoria), 
         ProductoComprado \= ProductoRecomendado, 
         not(compra(Usuario, ProductoRecomendado))),
        Recomendaciones),
    recomendar_recursivo(Usuario, Resto, RestoRecomendados),
    append(Recomendaciones, RestoRecomendados, ListaSinDuplicados),
    sort(ListaSinDuplicados, ListaFinal).

recomendar_con_recursion(Usuario, ListaRecomendada) :-
    findall(Producto, compra(Usuario, Producto), Compras),
    recomendar_recursivo(Usuario, Compras, ListaRecomendada).









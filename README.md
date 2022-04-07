# M06C03_Alejandro_Jabo
Evaluación practica - Base de datos


Consiga:
Necesitamos diseñar una base de datos relacional para almacenar información sobre un sistema que administra notas de texto. El interés primario es poder lograr que un usuario en particular pueda gestionar de cero muchas notas.

En el caso de los usuarios, se necesita registrar el nombre y un e-mail que los identifique.

Además es importante conocer qué nota es la que fue gestionada (creada, modificada y/o eliminada) por dicho usuario. Ahora bien, una nota solo puede ser gestionada por un único usuario y para la misma necesitamos registrar un título (el cual no debe superar los 100 caracteres), una fecha de creación, la fecha de la última modificación, una descripción (es decir, la nota en sí), un mecanismo para identificar si dicha nota puede ser o no eliminada una vez que sea creada, y por último nos piden que cada nota debe estar asociada a una o varias categorías, es decir, una categoría puede contener de cero a muchas notas. 
Por ejemplo: la categoría música almacenará si existen, todas las notas que poseen dicha categoría.

* Diagrama de entidad relación
En el DER debemos señalar las tablas con los atributos que son clave primaria y los que son clave foránea. Además, por cada atributo debemos especificar si aceptan nulos o no y qué tipo de dato pueden almacenar. Es importante que no nos olvidemos de representar qué relación y la cardinalidad que existe entre las diferentes tablas de la base de datos para la administración de las notas.

* Script de SQL
Nuestro script debe crear por completo la base de datos para la administración de las notas, así como también generar por cada tabla 10 registros con datos de prueba.

Comentarios sobre el Diagrama de entidad relacion (como lo pense yo):

* Tabla Usuarios: recibe su respectivo id, nombre y email.
* Tabla Notas: recibe su respectivo id, titulo, descripcion, fecha de creacion, fecha de modificacion, el estado para "borar o no" la nota y recibe el id del usuario para hacer la relacion de uno a muchos (Ahora bien, una nota solo puede ser gestionada por un único usuario).
Es decir, una nota puede tener varias notas pero una nota puede estar relacionada a un solo usuario.
* Tabla Categorias: recibe su id y un titulo que va a describir la categoria.
* Tabla Registros: recibe su id, id de usuario, id de nota, id de que tipo de modificacion se hizo + fecha en la que se registro esta modificacion
 Esta es la tabla que se va a encargar de llevar un registro de las modificaciones que se fueron haciendo a las notas, las modificaciones pueden ser: Create, Update o Delete (para esto hice la tabla "tipos_modificaciones")
* Tabla tipos de modificaciones: recibe su id y el nombre de la modificacion (Create, Update y Delete)
* Tabla Notas de categorias (pivot): recibe su id, id de la nota y el id de la categoria a la que pertence. Esta tabla la hice para aplicar la relacion "muchos a muchos" entre la tabla Notas y Categorias ya que la consigna dice: "y por último nos piden que cada nota debe estar asociada a una o varias categorías"

Comentario sobre este ultimo tema: No me parece correcto que una nota pueda tener varias categorias, yo lo pense asi -> si tengo una nota que esta en la categoria "Gaming" como por ejemplo: "Hoy encendi la computadora para jugar una partida de LoL"
Como es posible que esta misma nota pertenezca a la categoria "Gaming" y al mismo tiempo, por ejemplo, pertenezca a la categoria "Cocina" o "Inmuebles"
No le veo el sentido, lo dejo como comentario.

Gracias por leer :D

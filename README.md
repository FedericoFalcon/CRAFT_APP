## AGENDA DE CONTACTOS
### Funcionalidades

Ver contactos almacenados (harcodeados, no una base de datos real)


Listar contactos


Agregar contactos


Añadir a favoritos


Ver interna de cada contacto con datos completos

## Respondiendo a las consignas del trabajo:

. Incluir conjuntos de valores en el código: contact_provider.dart posee una lista donde se agregan los contactos


. La aplicación debe contar con 4 pantallas:


-1. Screen Home - OK


-2. Screen Lista de registros - OK


-3. Screen Visualización individual de un registro : OK


-4. Screen con Widget reutilizable : En este caso tenemos el widget contact_info.dart, que se llama desde contactdetails_screen.dart


-4.1. Contemplar el envío de parámetros al constructor requeridos y opcionales: El modelo de contacto tiene parametros requeridos y opcionales


--------------------------------


Widgets que se recomiendan contemplar:


    Row, Column, Container, Textbox, Sizebox, etc. : OK


    StatelessWidget y StatefulWidget


        .Contemplar alguna pantalla que utilice el setState: contactdetails_screen.dart tiene un statefulwidget
                                                             y usa un setstate() para setear un bool a favoritos.


    Scaffold (pueden utilizarse diferentes modelos de navegación): OK


    ListView: OK


    Imágenes. Pueden utilizarse diferentes widgtes para mostrarlas: OK


---------------------------------


Estructura


    Assets. Incluir desde pubspec.yaml recursos estáticos (Imágenes, gif, fuentes. etc.): OK (assets/images/loading.gif)


    Routes (Rutas): OK


    Theme (Temas): OK (Modo oscuro y claro)


    Utilizar archivos unificadores de exportación (Barrel files): OK, en main.dart para Screens


----------------------------------


Material a compartir con el docente:


    N° de API de Android y Dimensiones del dispositivo: Pixel 5 API 33. ('Device dimensions are 70.4 × 144.7 × 8 millimeters (2.77 × 5.7 × 0.31 inches)') 

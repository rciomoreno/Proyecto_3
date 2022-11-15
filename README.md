# Proyecto_3

OBJETIVO 🎯

El objetivo de este proyecto es crear una base de datos con información extraída utilizando dos métodos aprendidos en clase de tres fuentes de información diferentes.

IDEA 💡

Mi idea fue sacar 3 tablas:

- Ranking de personas más ricas del mundo en la actualidad y sus respectivos negocios (1ª tabla).

- Ranking de personas más ricas de España y sus respectivos negocios (2ª tabla).

- Ranking de personas más ricas de Andalucía y sus respectivos negocios (3ª tabla).

EJECUCIÓN 📝

Una vez establecidos la idea y los objetivos, los pasos seguidos fueron los siguientes:

-- EXTRACCIÓN DE DATOS --

- 1ª tabla - 'forbes_world': Para conseguir los datos de la primera tabla, descargué un archivo .csv de la página web 'Kaggle', donde podíamos observar los siguientes datos:

<img width="717" alt="tabla_forbes_world" src="https://user-images.githubusercontent.com/115650089/201773531-361f7a0d-2569-41a9-a109-343b0cdd3db3.png">

Esta tabla venía bastante limpia, por lo que solo tuve que cambiar todos los nombres de las columnas a mayúscula por cuestiones de preferencia y cambiar el nombre de la columna 'RANK' por 'ID', ya que el puesto en el ranking mundial, en principio, no nos serviría:

<img width="789" alt="final_world" src="https://user-images.githubusercontent.com/115650089/201776311-0fd00741-3345-44f0-b381-3ed5b67cf0d7.png">

- 2ª tabla - 'forbes_sp': En este caso, utilicé la librería Selenium para poder scrappear los datos del ranking oficial de la página web de Forbes:

   1º - Saqué los nombres, los cargos, la Comunidad Autónoma y la cifra de cada uno de los integrantes de dicho ranking, siendo estos 100. Para ello, tuve    que hacerlo en dos tandas, puesto que los 5 primeros registros estaban diferenciados del resto:
   
<img width="1076" alt="5_primeros_sp" src="https://user-images.githubusercontent.com/115650089/201775758-1bed4523-4fe9-459f-b615-698a3972010b.png">

<img width="928" alt="resto_sp" src="https://user-images.githubusercontent.com/115650089/201775933-778deb45-8886-4687-a8f2-567287fe39de.png">

   2º - Una vez obtenidas ambas tandas de datos, las concatené, creée la columna 'ID' para identificar los registros y obtuve la segunda tabla:
   
<img width="1102" alt="final_sp" src="https://user-images.githubusercontent.com/115650089/201776146-8b933e47-44cd-4d06-9566-e8eb24cfc657.png">


-3ª tabla - 'andalucia': Por último, para la tabla de datos de Andalucía:

   1º - Investigué y encontré una página web de donde podía extraer un rankinng de las empresas más grandes de Andalucía por ciudad:
   
<img width="1211" alt="web_andalucía" src="https://user-images.githubusercontent.com/115650089/201777325-251b3d4f-eef0-423b-9150-39729d493cd2.png">

   2º - Para ello, utilizando de nuevo Selenium, aumotaticé la obtención de las tablas paralelizando la entrada en cada uno de los links,               
   obteniendo así una lista de Dataframes de todas las ciudades andaluzas.
   
   3º - Una vez definido un DF para cada ciudad, adecué las columnas para que pudieran recoger todos los datos y agregué una nueva llamándola 'CIUDAD'        donde se especificaría a qué ciudad nos estamos refiriendo en cada entrada de la tabla, además de otra a la que llamaría 'ID' para identificar todas las    líneas fácilmente.
   
   4º - Por último, concatené todos las tablas para crear la tabla número 3:
   
<img width="777" alt="final_andalucia" src="https://user-images.githubusercontent.com/115650089/201778424-3b9f6b85-dc7e-41ff-8ba1-e2b157b38c6e.png">

-- CREACIÓN DE BASE DE DATOS --
   
   Finalmente, una vez creadas las 3 tablas que formarían nuestra base de datos, las pasé a MYSQL Workbench después de haber creado una base de datos          llamada 'listas_forbes'.
   
   Una vez subidas, creé las relaciones entre ellas de la siguiente forma:
   
<img width="962" alt="Relaciones entre tablas" src="https://user-images.githubusercontent.com/115650089/201778928-1215cda8-3f93-4c1b-b1e4-3d917a977c9e.png">

   En este caso y debido a la escasez de tiempo de limpieza, dado que este proyecto se focalizó en la correcta extracción de datos, solamente pude crear la    relación entre el ranking de España y Andalucía mediante la creación de una cuarta tabla en la que estarían disponibles los IDs de ambas.

PRÓXIMOS PASOS A SEGUIR  🎓

- Hacer hincapié en la limpieza de las 3 tablas (sobre todo de nombres y empresas).

- Buscar los nombres de los CEO de las empresas de Andalucía para que todas las tablas lo tengan en común.

- Tras su correcta limpieza, crear una base de datos relacional entre las 3 tablas y hacer varias queries sobre ellas que nos proporcionen información.


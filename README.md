# # fifa21_cleaning
Limpieza del dataset FIFA 21 proporcionado en Kaggle

## Limpieza

Este proyecto consistió en la limpieza y remodelación del dataset para poder trabajar con él. Se revisarón sus más de 70 columnas una por una. 

1. Se creo una función que mostró datos importantes y ejemplos de cada columna, preguntando cambios sugeridos
2. Se siguió el documento creado y se abordarón las 77 columnas usando pandas y regex
3. Se trato de componer los nombres obteniendo información de name, long_name y playerUrl, cambiando los nombres abreviados a su versión completa
![Untitled (2)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/2cd4b50a-fcf5-496a-9874-205cd0bf34a7)

5. Se eliminó el único valor duplicado
6. Se transformó la columna "Team & Contract" en cuatro columnas más utiles
7. Se pasarón las columnas a unidades metricas internacionales 
8. Se convirtierón los valores monetarios en cantidad de euros, haciendo la columna numerica.
9. Se revisó las columnas de estadísticas con una gráfica de caja y un histograma para observar si se trataban de distribuciones razonables

![Untitled (3)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/790b23b8-4904-481e-9ea3-a017fe81f700)

## Normalización
Debido a que no es lo mejor trabajar siempre con una tabla tan grande, porque solo se usan un par de columnas por analisis, se optó por convertir la tabla resultante de la limpieza de 98 columnas a tablas más pequeñas.
![Untitled (4)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/8204eed8-bc8d-4db2-b614-7786f89e6745)

1. Se creó un ID numerico basado en la posición de las filas en la tabla
2. Se utilizó dbdiagram.io y su lenguaje dbml para estructurar las nuevas tablas
https://dbdiagram.io/d/647281ad7764f72fcff5d11b 
3. Se investigó la interpretación de cada columna para poder definir las agrupaciones más útiles
![Untitled (5)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/008e7ec7-9518-42f3-8192-ad3140ddf7be)
4. Se crearón todas las tablas usando pandas, parseando el documento sql generado en dbdiagram.
5. Se creó un documento con la investigación de cada columna 
![Untitled (6)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/9a43a714-7cb9-4431-8720-c2c1eda31dbc)

## Análisis 

Se plantearón las siguientes preguntas para guiar el analisis. Pensando como el tomador de acción a los jovenes que sueñan con ser jugadores. El objetivo general es encontrar la combinación de estadísticas a las cuales tomar atención que son más importantes para ser uno de los mejores.

1. ¿Cuál es la edad cuando los jugadores están en su mejor forma? ![Untitled (7)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/0913d67d-287c-47e3-a88b-564113bfa84e)
![Untitled (8)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/bc8efbff-0368-4a1f-84d7-8fb044c96567)

2. ¿Por qué ser zurdo te facilita ser profesional y en cuáles posiciones trabajan?
![Untitled (9)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/035a4f6b-f504-4c6f-b281-28c249839148)
![Untitled (10)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/6fa2e4b3-572b-4a5a-b255-dece3da8ffda)
3. ¿Qué tan mejores son los jugadores más valiosos?
![Untitled (11)](https://github.com/Cseudave/fifa21_cleaning/assets/123985830/bbfae8ed-a308-4ce7-858e-0b2e921e3c8c)


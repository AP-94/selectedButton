# Selected Button

Código para una vista de iOS donde se puedan elegir unos botones como opciones, 
que los botones sean seleccionables y se contabilicen, al sobrepasar el máximo de selección no se pueda elegir más, 
y para pasar de pantalla exija unos requerimientos.

## Comenzando


### Pre-requisitos

```
Xcode
```

### Instalación

```
Para probar este coódigo, solo debes clonar el repositorio en tu ordenador, y abrir el proyecto en Xcode.
```

## Funcionamiento

El funcionamiento de la vista es sencillo, se le dice al usuario que seleccione solo 4 deportes, por ello, los botones podrán ser seleccionados y 
al ser seleccionados quedar en un estado de "isSelected", donde el código sabe que ese botón esta seleccionado, y el usuario, 
visualmente puede ver que botones ha seleccionado. Así mismo, puede seleccionar y deseleccionar cada botón. Luego de tener 4 botones seleccionados, 
puede avanzar pulsando el botón de "siguiente", si tiene los 4 botones seleccionado la app navegaría "en el caso de una aplicación real" a la siguiente vista,
en nuestro caso desplegara un alert con el listado de los botones seleccionados, de otra forma, si no hay 4 seleccionados,
la app desplegara un alert comentando al usuario que para avanzar necesita seleccionar 4 botones.

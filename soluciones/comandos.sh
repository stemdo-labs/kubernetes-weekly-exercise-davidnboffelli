#Se desea desplegar en nuestro cluster lo siguiente:

#Un aplicativo laravel con los siguientes requisitos:

#Todos los elementos deben desplegarse en un namespace con el nombre laravel. 
kubectl create namespace laravel
#Se usará la imagen de bitnami/laravel en la versión mas reciente a la entrega de este ejercicio.
#Se usará una BBDD compatible (libre elección) con nuestro Laravel usando la imagen oficial de la BBDD que elijas.
#Usare postgres
#Se debe desplegar todo elemento kubernetes necesario para que Laravel pueda conectarse a la BBDD y nosotros podamos acceder a laravel desde un navegador.
#Debo hacer:
# - un deployment para laravel
# - un configmap para conectarme a la bbdd
# - un deployment para la bbdd
# - un service para exponer laravel
# - un service para exponer la bbdd
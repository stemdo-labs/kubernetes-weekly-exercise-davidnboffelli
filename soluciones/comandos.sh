#Se desea desplegar en nuestro cluster lo siguiente:

############################################################################################################################
### PARTE 1 ###
############################################################################################################################

#Un aplicativo laravel con los siguientes requisitos:

#Todos los elementos deben desplegarse en un namespace con el nombre laravel. 
kubectl create namespace laravel
#Se usará la imagen de bitnami/laravel en la versión mas reciente a la entrega de este ejercicio.
#Imagen: bitnami/laravel:11.0.8
#Se usará una BBDD compatible (libre elección) con nuestro Laravel usando la imagen oficial de la BBDD que elijas.
#Usare mariadb. Imagen: mariadb:11.4.1-rc
#Se debe desplegar todo elemento kubernetes necesario para que Laravel pueda conectarse a la BBDD y nosotros podamos acceder a laravel desde un navegador.
#Debo hacer:
# - un deployment para laravel (deploy-laravel.yaml)
# - un configmap para conectarme a la bbdd (datos-mariadb.yaml)
# - un secret para conectarme a la bbdd (secretos-mariadb.yaml)
# - un deployment para la bbdd (deploy-mariadb.yaml)
# - un service para exponer laravel (service-laravel.yaml)
# - un service para exponer la bbdd (service-mariadb.yaml)

#Para desplegar todos estos recursos, ubicarse en la carpeta actual y usar el comando:
kubectl apply -f . 

#Para probar el servicio laravel creado:
kubectl port-forward service/laravel-service 9999:8000 -n laravel
#Luego entrar a localhost:9999 en el navegador
#Adjunto imagen con el resultado en el navegador

############################################################################################################################
### PARTE 2 ###
############################################################################################################################

# Un aplicativo phpmyadmin con los siguientes requisitos:

# Todos los elementos deben desplegarse en un namespace con el nombre phpmyadmin.
kubectl create namespace phpmyadmin
# Se usará la imagen oficial de phpmyadmin.
#Imagen: phpmyadmin:5.2.1
# Se debe desplegar todo elemento kubernetes necesario para que phpmyadmin pueda conectarse a la BBDD y nosotros podamos acceder a phpmyadmin desde un navegador.
#Debo hacer:
# - un deployment para phpmyadmin (deploy-phpmyadmin.yaml)
# - un configmap para conectarme a la bbdd (datos-phpmyadmin.yaml)
# - un secret para conectarme a la bbdd (secretos-phpmyadmin.yaml)
# - un service para exponer phpmyadmin (service-phpmyadmin.yaml)
# phpmyadmin debe ser accesible sin requerir autenticación (con fines de desarrollo).

#Para probar el servicio laravel creado:
kubectl port-forward service/laravel-service 9988:8000 -n laravel
#Luego entrar a localhost:9988 en el navegador
#Adjunto imagen con el resultado en el navegador

############################################################################################################################
### PARTE 3 ###
############################################################################################################################

# Creación de Infraestructura con Terraform en AWS
Con Terraform instalado, estás listo para crear tu primera infraestructura.

En este tutorial, aprovisionarás una instancia EC2 en Amazon Web Services (AWS). Las instancias EC2 son máquinas virtuales que funcionan en AWS y son un componente común en muchos proyectos de infraestructura.

## Prerrequisitos
Para seguir este tutorial necesitarás:

- Terraform CLI (1.2.0+) instalado.
- AWS CLI instalado.
- Una cuenta de AWS y credenciales asociadas que te permitan crear recursos.
- Para utilizar tus credenciales IAM para autenticar el proveedor de AWS de Terraform, configura la variable de entorno AWS_ACCESS_KEY_ID.

```
export AWS_ACCESS_KEY_ID=<..>
export AWS_SECRET_ACCESS_KEY=<..>
```

Este tutorial aprovisionará recursos que califican bajo la capa gratuita de AWS.

## Configuración
El fichero de infraestructura que se encuentra en `src/main.tf` define la infraestructura que se va a desplegar. En este caso, queda a disposicion del alumno leer la documentacion de Terraform para el provider AWS y entender la morfologia del fichero. 

## Tares
El fichero anterior va a levantar un servidor virtual del tipo `t2.small`. Para ello, primero debemos inicializar el directorio de trabajo de Terraform:
```
terraform init path/al/directorio/terraform/src
```

Despues, podemos planear los cambios para ver que hara:
```
terraform plan path/al/directorio/terraform/src
```

Luego, podemos aplicar los cambios con:
```
terraform apply path/al/directorio/terraform/src
```

Y por ultimo, podemos destruir lo que hemos creado con:
```
terraform destroy path/al/directorio/terraform/src
```

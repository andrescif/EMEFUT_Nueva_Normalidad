library(tidyverse)
#Cargar los datos
datos <- 
read.csv("~/R Projects/EMEFUT_Nueva_Normalidad/Datos/Avances_EMEFUT_al_22febrero.csv")
#Nombres de variables
names(datos) <- c("Timestamp","Fecha_reporte","Sede","Entreno_presencial","Turnos","Categoria_Presencial",
                  "Atendidos_totales","Teletrabajo","Categoria_Teletrabajo","Alumnos_video","Alumnos_contacto")

#Correccion de datos
datos[245,"Fecha_reporte"] <- "2021-02-05"	
datos[42,"Fecha_reporte"] <- "2021-01-26"
datos[59,"Fecha_reporte"] <- "2021-01-26"
datos[60,"Fecha_reporte"] <- "2021-01-26"
datos[68,"Fecha_reporte"] <- "2021-01-26"
datos[92,"Fecha_reporte"] <- "2021-01-26"
datos[71,"Fecha_reporte"] <- "2021-01-27"
datos[93,"Fecha_reporte"] <- "2021-01-27"
datos[94,"Fecha_reporte"] <- "2021-01-27"
datos[95,"Fecha_reporte"] <- "2021-01-27"
datos[98,"Fecha_reporte"] <- "2021-01-28"
datos[118,"Fecha_reporte"] <- "2021-01-29"
datos[125,"Fecha_reporte"] <- "2021-01-29"
datos[126,"Fecha_reporte"] <- "2021-01-29"
datos[127,"Fecha_reporte"] <- "2021-01-29"
datos[152,"Fecha_reporte"] <- "2021-01-29"
datos[158,"Fecha_reporte"] <- "2021-02-02"
datos[161,"Fecha_reporte"] <- "2021-02-02"
datos[162,"Fecha_reporte"] <- "2021-02-02"
datos[187,"Fecha_reporte"] <- "2021-02-03"
datos[219,"Fecha_reporte"] <- "2021-02-04"
datos[254,"Fecha_reporte"] <- "2021-02-05"
datos[292,"Fecha_reporte"] <- "2021-02-09"
datos[307,"Fecha_reporte"] <- "2021-02-09"
datos[321,"Fecha_reporte"] <- "2021-02-10"
datos[347,"Fecha_reporte"] <- "2021-02-11"
datos[379,"Fecha_reporte"] <- "2021-02-12"
datos[418,"Fecha_reporte"] <- "2021-02-16"
datos[434,"Fecha_reporte"] <- "2021-02-17"
datos[464,"Fecha_reporte"] <- "2021-02-18"
datos[499,"Fecha_reporte"] <- "2021-02-19"

#Correccion de clases
datos$Fecha_reporte<- as.Date(datos$Fecha_reporte, format="%Y-%m-%d")
class(datos$Fecha_reporte) 
table(datos$Fecha_reporte)

#Filtrar las fechas deseadas
datos_febrero<- datos %>%
        filter(Fecha_reporte > "2021-01-31" &
                       Fecha_reporte < "2021-03-01")

table(datos_febrero$Alumnos_video)
sum(datos_febrero$Alumnos_video,na.rm = TRUE)
summary(datos_febrero$Alumnos_video)
table(!is.na(datos_febrero$Alumnos_video))

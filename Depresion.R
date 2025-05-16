# Importamos nuestra base datos
datos <- read.csv("EstudioDatosMentales.csv",header=TRUE, sep=",")

#Tabla de frecuencias 
View(table(datos$Do.you.have.Depression.))

#Porcentajes
prop.table(table(datos$Do.you.have.Depression.)) * 100

#Gráfico de barras
barplot(table(datos$Do.you.have.Depression.),
        main = "Presencia de Depresión en Estudiantes",
        xlab = "¿Tiene Depresión?",
        ylab = "Frecuencia",
        col = c("grey", "green"),
        border = "black")

#Gráfico de torta
pie(table(datos$Do.you.have.Depression.),
    main = "Distribución de Depresión",
    col = c("grey", "green"),
    labels = paste(names(table(datos$Do.you.have.Depression.)),
                   "\n",
                   table(datos$Do.you.have.Depression.),
                   "estudiantes"),
    border = "black")


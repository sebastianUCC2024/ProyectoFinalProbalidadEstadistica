# Importamos nuestra base datos
datos <- read.csv("EstudioDatosMentales.csv",header=TRUE, sep=",")
# Media, mediana, mínimo, máximo, etc.
summary(datos$Choose.your.gender)
# Rango
range(datos$Choose.your.gender, na.rm = TRUE)

#Tabla de frecuencias 
View(table(datos$Choose.your.gender))

#Porcentajes de cada género respecto al total
prop.table(table(datos$Choose.your.gender)) * 100

#Gráfico Diagrama de barras
barplot(table(datos$Choose.your.gender),
        main = "Distribución por Género",
        xlab = "Género",
        ylab = "Frecuencia",
        col = c("lightblue", "pink", "lightgreen"),
        border = "black",
        cex.main = 1.2,
        cex.axis = 0.9,
        cex.names = 0.9)
#Gráfico de torta
pie(table(datos$Choose.your.gender),
    main = "Distribución por Género",
    col = c("lightblue", "pink", "lightgreen"),
    labels = paste(names(table(datos$Choose.your.gender)),
                   "\n",
                   table(datos$Choose.your.gender),
                   "estudiantes"),
    border = "black",
    cex = 0.9)

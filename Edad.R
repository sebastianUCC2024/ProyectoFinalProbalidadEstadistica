# Importamos nuestra base datos
datos <- read.csv("EstudioDatosMentales.csv",header=TRUE, sep=",")

# Media, mediana, mínimo, máximo, etc.
summary(datos$Age) 
# Desviación estándar
sd(datos$Age, na.rm = TRUE)
# Varianza
var(datos$Age, na.rm = TRUE) 
# Rango
range(datos$Age, na.rm = TRUE)

#Histograma con curva de densidad
hist(datos$Age,
     main = "Histograma de Edad",
     xlab = "Edad",
     ylab= "Densidad",
     col = "lightblue",
     border = "white",
     probability = TRUE,)
lines(density(na.omit(EstudioDatosMentales$Age)), col = "darkblue", lwd = 2)

#Diagrama de caja
boxplot(datos$Age,
        main = "Diagrama de Caja - Edad",
        ylab = "Edad",
        col = "salmon")


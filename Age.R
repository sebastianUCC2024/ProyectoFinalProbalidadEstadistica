
#Estadísticas 
summary(EstudioDatosMentales$Age) # Media, mediana, mínimo, máximo, etc.

sd(EstudioDatosMentales$Age, na.rm = TRUE) # Desviación estándar

var(EstudioDatosMentales$Age, na.rm = TRUE) # Varianza

range(EstudioDatosMentales$Age, na.rm = TRUE) # Rango4


#Histograma con curva de densidad
hist(EstudioDatosMentales$Age,
     main = "Histograma de Edad",
     xlab = "Edad",
     col = "lightblue",
     border = "white",
     probability = TRUE)
lines(density(na.omit(EstudioDatosMentales$Age)), col = "darkblue", lwd = 2)

#Diagrama de caja
boxplot(EstudioDatosMentales$Age,
        main = "Diagrama de Caja - Edad",
        ylab = "Edad",
        col = "salmon")

shapiro.test(Age)

#Gráfico Q-Q 
qqnorm(EstudioDatosMentales$Age)
qqline(EstudioDatosMentales$Age, col = "red")



#EDAD 
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

#ANSIEDAD
#Estadísticas 
summary(EstudioDatosMentales$Do.you.have.Anxiety.) # Media, mediana, mínimo, máximo, etc.
range(EstudioDatosMentales$Do.you.have.Anxiety., na.rm = TRUE) # Rango

#Tabla de frecuencias 
table(EstudioDatosMentales$Do.you.have.Anxiety.)

#Porcentajes
prop.table(table(EstudioDatosMentales$Do.you.have.Anxiety.)) * 100

#Gráfico de barras
barplot(table(EstudioDatosMentales$Do.you.have.Anxiety.),
        main = "Presencia de Ansiedad en Estudiantes",
        xlab = "¿Tiene Ansiedad?",
        ylab = "Frecuencia",
        col = c("lightblue", "darkblue"),
        border = "white")

#Gráfico de torta
pie(table(EstudioDatosMentales$Do.you.have.Anxiety.),
    main = "Distribución de Ansiedad",
    col = c("lightblue", "darkblue"),
    labels = paste(names(table(EstudioDatosMentales$Do.you.have.Anxiety.)),
                   "\n",
                   table(EstudioDatosMentales$Do.you.have.Anxiety.),
                   "estudiantes"),
    border = "white")

#GENERO
#Estadísticas 
summary(EstudioDatosMentales$Choose.your.gender) # Media, mediana, mínimo, máximo, etc.
range(EstudioDatosMentales$Choose.your.gender, na.rm = TRUE) # Rango

#Tabla de frecuencias 
View(table(EstudioDatosMentales$Choose.your.gender))

#Porcentajes de cada género respecto al total
prop.table(table(EstudioDatosMentales$Choose.your.gender)) * 100

#Gráfico Diagrama de barras
barplot(table(EstudioDatosMentales$Choose.your.gender),
        main = "Distribución por Género",
        xlab = "Género",
        ylab = "Frecuencia",
        col = c("lightblue", "pink", "lightgreen"),
        border = "white",
        cex.main = 1.2,
        cex.axis = 0.9,
        cex.names = 0.9)

#Gráfico de torta
pie(table(EstudioDatosMentales$Choose.your.gender),
    main = "Distribución por Género",
    col = c("lightblue", "pink", "lightgreen"),
    labels = paste(names(table(EstudioDatosMentales$Choose.your.gender)),
                   "\n",
                   table(EstudioDatosMentales$Choose.your.gender),
                   "estudiantes"),
    border = "white",
    cex = 0.9)

#DEPRESION

#Tabla de frecuencias 
View(table(EstudioDatosMentales$Do.you.have.Depression.))

#Porcentajes
prop.table(table(EstudioDatosMentales$Do.you.have.Depression.)) * 100

#Gráfico de barras
barplot(table(EstudioDatosMentales$Do.you.have.Depression.),
        main = "Presencia de Depresión en Estudiantes",
        xlab = "¿Tiene Depresión?",
        ylab = "Frecuencia",
        col = c("grey", "black"),
        border = "white")

#Gráfico de torta
pie(table(EstudioDatosMentales$Do.you.have.Depression.),
    main = "Distribución de Depresión",
    col = c("grey", "black"),
    labels = paste(names(table(EstudioDatosMentales$Do.you.have.Depression.)),
                   "\n",
                   table(EstudioDatosMentales$Do.you.have.Depression.),
                   "estudiantes"),
    border = "black")

#ATAQUES DE PANICO
#Estadísticas 
summary(EstudioDatosMentales$Do.you.have.Panic.attack.) # Media, mediana, mínimo, máximo, etc.
range(EstudioDatosMentales$Do.you.have.Panic.attack., na.rm = TRUE) # Rango

#Tabla de frecuencias 
View(table(EstudioDatosMentales$Do.you.have.Panic.attack.))

#Porcentajes
prop.table(table(EstudioDatosMentales$Do.you.have.Panic.attack.)) * 100

#Gráfico de barras
barplot(table(EstudioDatosMentales$Do.you.have.Panic.attack.),
        main = "Presencia de Ataques de pánico en \n Estudiantes",
        xlab = "¿Tiene Ataques de pánico?",
        ylab = "Frecuencia",
        col = c("lightgreen", "steelblue"),
        border = "white")

#Gráfico de torta
pie(table(EstudioDatosMentales$Do.you.have.Panic.attack.),
    main = "Distribución de Ataques de pánico",
    col = c("lightgreen", "steelblue"),
    labels = paste(names(table(EstudioDatosMentales$Do.you.have.Panic.attack.)),
                   "\n",
                   table(EstudioDatosMentales$Do.you.have.Panic.attack.),
                   "estudiantes"),
    border = "white")
#GCPA

#Estadísticas 
summary(EstudioDatosMentales$What.is.your.CGPA.) # Media, mediana, mínimo, máximo, etc.
range(EstudioDatosMentales$What.is.your.CGPA., na.rm = TRUE) # Rango

#Tabla de frecuencias
View(table(What.is.your.CGPA.))

#Porcentajes
View(prop.table(table(EstudioDatosMentales$What.is.your.CGPA.))*100)

#Diagrama de barras
barplot(table(What.is.your.CGPA.),
        main = "Distribución de Promedio Académico (CGPA)",
        xlab = "Rango de CGPA",
        ylab = "Frecuencia",
        col = c("#F7DC6F", "#F0B27A", "#BB8FCE"),
        border = "white")

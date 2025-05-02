# Importamos nuestra base datos
datos <- read.csv("EstudioDatosMentales.csv",header=TRUE, sep=",")
# Media, mediana, mínimo, máximo, etc.
summary(datos$Do.you.have.Panic.attack.)
# Rango
range(datos$Do.you.have.Panic.attack., na.rm = TRUE)

#Tabla de frecuencias 
View(table(datos$Do.you.have.Panic.attack.))

#Porcentajes
prop.table(table(datos$Do.you.have.Panic.attack.)) * 100

#Gráfico de barras
barplot(table(datos$Do.you.have.Panic.attack.),
        main = "Presencia de Ataques de pánico en \n Estudiantes",
        xlab = "¿Tiene Ataques de pánico?",
        ylab = "Frecuencia",
        col = c("lightgreen", "steelblue"),
        border = "black")

#Gráfico de torta
pie(table(datos$Do.you.have.Panic.attack.),
    main = "Distribución de Ataques de pánico",
    col = c("lightgreen", "steelblue"),
    labels = paste(names(table(datos$Do.you.have.Panic.attack.)),
                   "\n",
                   table(datos$Do.you.have.Panic.attack.),
                   "estudiantes"),
    border = "black")

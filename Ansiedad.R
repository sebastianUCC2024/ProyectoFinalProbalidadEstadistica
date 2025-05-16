# Importamos nuestra base datos
datos <- read.csv("EstudioDatosMentales.csv",header=TRUE, sep=",")
# Media, mediana, mínimo, máximo, etc.
summary(datos$Do.you.have.Anxiety.) 
# Rang
range(datos$Do.you.have.Anxiety., na.rm = TRUE) 

#Tabla de frecuencias 
table(datos$Do.you.have.Anxiety.)

#Porcentajes
prop.table(table(EstudioDatosMentales$Do.you.have.Anxiety.)) * 100

#Gráfico de barras
barplot(table(datos$Do.you.have.Anxiety.),
        main = "Presencia de Ansiedad en Estudiantes",
        xlab = "¿Tiene Ansiedad?",
        ylab = "Frecuencia",
        col = c("lightblue", "darkblue"),
        border = "black")

#Gráfico de torta
pie(table(datos$Do.you.have.Anxiety.),
    main = "Distribución de Ansiedad",
    col = c("lightblue", "darkblue"),
    labels = paste(names(table(datos$Do.you.have.Anxiety.)),
                   "\n",
                   table(datos$Do.you.have.Anxiety.),
                   "estudiantes"),
    border = "black")



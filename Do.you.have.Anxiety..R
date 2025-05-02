#Depresión
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


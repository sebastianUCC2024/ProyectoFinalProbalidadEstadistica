#Depresión

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
    border = "white")


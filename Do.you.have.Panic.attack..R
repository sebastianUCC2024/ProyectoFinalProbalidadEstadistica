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

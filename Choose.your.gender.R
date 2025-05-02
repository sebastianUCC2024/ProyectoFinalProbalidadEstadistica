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


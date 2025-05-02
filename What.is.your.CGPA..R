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
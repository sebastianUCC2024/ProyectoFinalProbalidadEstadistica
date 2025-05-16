# Importamos nuestra base datos
datos <- read.csv("EstudioDatosMentales.csv",header=TRUE, sep=",")
# Media, mediana, mínimo, máximo, etc.
summary(datos$What.is.your.CGPA.) 
# Rango
range(datos$What.is.your.CGPA., na.rm = TRUE)

#Tabla de frecuencias
View(table(datos$What.is.your.CGPA.))

# Diagrama de barras
barplot(
  table(datos$What.is.your.CGPA),
  main = "Distribución de Promedio Académico (CGPA)",
  xlab = "Rango de CGPA",
  ylab = "Frecuencia",
  col = c("#F7DC6F", "#F0B27A", "#BB8FCE"),
  border = "black"
)

qqnorm(EstudioDatosMentales$Age, main = "grafico edad", xlab = "x", ylab = "y")
qqline(EstudioDatosMentales$Age, col = "red", lwd = 2)

     
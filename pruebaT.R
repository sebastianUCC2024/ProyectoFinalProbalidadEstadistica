# Cargar paquetes necesarios
library(dplyr)

# Leer el archivo CSV
datos <- read.csv("EstudioDatosMentales.csv")

# Limpiar nombres de columnas para que no tengan espacios ni caracteres especiales
names(datos) <- make.names(names(datos))

# Convertir CGPA a promedio matemático real del intervalo
datos$CGPA_num <- recode(datos$What.is.your.CGPA.,
                         "0 - 1.99" = 1.495,
                         "2.00 - 2.49" = 2.245,
                         "2.50 - 2.99" = 2.745,
                         "3.00 - 3.49" = 3.245,
                         "3.50 - 4.00" = 3.75)

# Filtrar por género
mujeres <- filter(datos, Choose.your.gender == "Female")
hombres <- filter(datos, Choose.your.gender == "Male")

# Prueba t para mujeres (con vs sin depresión)

t_test_mujeres <- t.test(CGPA_num ~ Do.you.have.Depression., data = mujeres)
print("Prueba t para mujeres (CGPA ~ Depresión):")
print(t_test_mujeres)

# Prueba t para hombres (con vs sin depresión)
t_test_hombres <- t.test(CGPA_num ~ Do.you.have.Depression., data = hombres)
print("Prueba t para hombres (CGPA ~ Depresión):")
print(t_test_hombres)

# Cargar librerías necesarias
library(dplyr)
library(ggplot2)

names(datos) <- make.names(names(datos))

# Convertir depresión a binaria
datos$Depresion <- ifelse(datos$Do.you.have.Depression. == "Yes", 1, 0)

#convertir ansiedad a binaria 
datos$ansiedad <- ifelse(datos$Do.you.have.Anxiety. == "Yes", 1, 0)

# Modelo de regresión lineal: CGPA según Edad
modelo <- lm(CGPA_num ~ Depresion, data = datos)
print(modelo)

# Resumen del modelo
summary(modelo)

# Visualización del modelo
ggplot(datos, aes(x = Age, y = CGPA_num)) +
  geom_point(color = "darkred") +
  geom_smooth(method = "lm", color = "blue", se = TRUE) +
  labs(title = "Relación entre Edad y depresion",
       x = "edad",
       y = "Promedio Académico (CGPA)") +
  theme_minimal()


# Matriz de correlación
correlacion <- cor(datos[, c("CGPA_num", "Depresion", "Age")],
                   use = "complete.obs")
print(correlacion)

# Visualización
library(corrplot)
corrplot(correlacion, method = "circle", type = "upper", tl.cex = 0.8)



#_____________________ MEDIDAS ___________________

# Se trabajar� con la matriz de datos "penguins.xlsx"


#-----------------------------------------------
#      Tendencia central
#-----------------------------------------------

# 1.- Media y mediana
summary(penguins)


# 2.- Moda


# 2.1.- Se descarga el paquete "modeest"
install.packages("modeest")

# 2.2.- Se abre la librer�a
library(modeest)

# 2.3.- C�lculo de la moda para la variable isla y largo del pico
mfv(penguins$isla) # categorica
mfv(penguins$largo_pico_mm) # numerica

#-----------------------------------------------
#      Medidas de dispersi�n
#-----------------------------------------------

# 1.- C�lculo de la varianza (s�lo para variables cuantitativas)
var(penguins$grosor_pico_mm)

# 2.- C�lculo de la desviaci�n est�ndar
sd(penguins$grosor_pico_mm)

# 3.- Error
media_pico<-mean(penguins$largo_pico_mm)
error<-(penguins$largo_pico_mm-(media_pico))
error


#4.- Coeficiente de variacion
CV<- sd(penguins$largo_pico_mm)/mean(penguins$largo_pico_mm)*100
CV

# 5.- Rango intercuartilico (IQR)
IQR(penguins$largo_pico_mm)

# 6.- Rango
pico<-penguins$largo_pico_mm
rango<-max(pico)-min(pico)
rango

#-----------------------------------------------
#    Medidas de posici�n
#------------------------------------------------

# 1.- Cuartiles
summary(penguins)

# 2.- Quintil
quintil<-quantile(penguins[["largo_aleta_mm"]], 
                  p=c(.20, .40, .60, .80))
quintil

# 3.- Decil
decil<-quantile(penguins[["largo_aleta_mm"]], 
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))
decil

# Percentil
percentil<-quantile(penguins[["largo_aleta_mm"]], 
                    p=c(.33, .66, .99))
percentil

# Interpretacion:
# <192 = Bajo
# 192-209 = Intermedio
# > 209 = Alto

# 1.- Media y mediana
summary(penguins)


# 2.- Moda

# 2.3.- C�lculo de la moda para la variable isla y largo del pico
mfv(penguins$genero) # categorica
mfv(penguins$grosor_pico_mm) # numerica

#-----------------------------------------------
#      Medidas de dispersi�n
#-----------------------------------------------

# 1.- C�lculo de la varianza (s�lo para variables cuantitativas)
var(penguins$grosor_pico_mm)

# 2.- C�lculo de la desviaci�n est�ndar
sd(penguins$grosor_pico_mm)

# 3.- Error
media_pico<-mean(penguins$grosor_pico_mm)
error<-(penguins$grosor_pico_mm-(media_pico))
error


#4.- Coeficiente de variacion
CV<- sd(penguins$grosor_pico_mm)/mean(penguins$grosor_pico_mm)*100
CV

# 5.- Rango intercuartilico (IQR)
IQR(penguins$grosor_pico_mm)

# 6.- Rango
pico<-penguins$grosor_pico_mm
rango<-max(pico)-min(pico)
rango

#-----------------------------------------------
#    Medidas de posici�n
#------------------------------------------------

# 1.- Cuartiles
summary(penguins)

# 2.- Quintil
quintil<-quantile(penguins[["masa_corporal_g"]], 
                  p=c(.20, .40, .60, .80))
quintil

# 3.- Decil
decil<-quantile(penguins[["masa_corporal_g"]], 
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))
decil

# Percentil
percentil<-quantile(penguins[["masa_corporal_g"]], 
                    p=c(.33, .66, .99))
percentil

# Interpretacion:
# <3700 = Bajo
# 3700-4500 = Intermedio
# >4500 = Alto

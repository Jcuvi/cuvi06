# Función para multiplicar dos números usando sumas sucesivas
multiplicar <- function(a, b) {
  if (b == 0) {
    return(0)
  }

  if (b < 0) {
    return(-multiplicar(a, -b))
  }

  # Suma sucesiva
  result <- 0
  for (i in 1:b) {
    result <- result + a
  }
  return(result)
}

# Función para solicitar dos números y mostrar su multiplicación
multip <- function() {
  cat("Ingrese el primer número: ")
  a <- as.numeric(readline())

  cat("Ingrese el segundo número: ")
  b <- as.numeric(readline())

  # Calcular el resultado
  resultado <- multiplicar(a, b)

  # Mostrar el resultado
  print(paste("El resultado de", a, "*", b, "=", resultado))
}

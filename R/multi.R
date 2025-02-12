# Función recursiva para multiplicar dos números usando sumas sucesivas
multiplicar <- function(a, b) {
  # Caso base
  if (b == 0) {
    return(0)
  }

  # Manejo de números negativos
  if (b < 0) {
    return(-multiplicar(a, -b))
  }

  # Llamada recursiva
  return(a + multiplicar(a, b - 1))
}

# Función para solicitar números al usuario y mostrar el resultado
multi<- function() {
  cat("Ingrese el primer número: ")
  a <- as.numeric(readline())

  cat("Ingrese el segundo número: ")
  b <- as.numeric(readline())

  # Calcular el resultado
  resultado <- multiplicar(a, b)

  # Mostrar el resultado
  print(paste("El resultado de", a, "*", b, "=", resultado))
}

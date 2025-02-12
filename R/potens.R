multiplicar <- function(a, b) {
  if (b == 0) {
    return(0)
  }

  if (b < 0) {
    return(-multiplicar(a, -b))
  }

  return(a + multiplicar(a, b - 1))
}

# Función recursiva para elevar un número 'base' a la potencia 'exponente'
elevar_a_potencia <- function(base, exponente) {
  # Caso base: Si el exponente es 0, el resultado es 1
  if (exponente == 0) {
    return(1)
  }

  # Llamada recursiva: base * elevar_a_potencia(base, exponente - 1)
  return(multiplicar(base, elevar_a_potencia(base, exponente - 1)))
}

# Función principal para solicitar datos al usuario y mostrar el resultado
potens <- function() {
  cat("Ingrese la base: ")
  base <- scan(what = numeric(), nmax = 1)  # Lee un número

  cat("Ingrese el exponente: ")
  exponente <- scan(what = numeric(), nmax = 1)  # Lee un número

  # Calcular el resultado
  resultado <- elevar_a_potencia(base, exponente)

  # Mostrar el resultado
  print(paste("El resultado de", base, "^", exponente, "=", resultado))
}





# Función recursiva para elevar un número a una potencia
elevar_a_potencia <- function(base, exponente) {
  # Caso base: cualquier número a la potencia 0 es 1
  if (exponente == 0) {
    return(1)
  }

  # Manejo de exponentes negativos
  if (exponente < 0) {
    return(1 / elevar_a_potencia(base, -exponente))
  }

  # Llamada recursiva: base multiplicada por elevar a potencia (exponente - 1)
  return(base * elevar_a_potencia(base, exponente - 1))
}

potenr<- function() {
  cat("Ingrese la base: ")
  base <- as.numeric(readline())

  cat("Ingrese el exponente: ")
  exponente <- as.numeric(readline())

  # Calcular el resultado
  resultado <- elevar_a_potencia(base, exponente)

  # Mostrar el resultado
  print(paste("El resultado de", base, "^", exponente, "=", resultado))
}

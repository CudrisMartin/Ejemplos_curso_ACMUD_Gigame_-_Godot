extends OptionButton
# Función para la operación lógica AND
func logico_and(a: bool, b: bool) -> bool:
	return a and b

# Función para la operación lógica OR
func logico_or(a: bool, b: bool) -> bool:
	return a or b

# Función para la operación lógica NOT
func logico_not(a: bool) -> bool:
	return not a

# Función para ejecutar la operación lógica seleccionada
func ejecutar(a: bool, b: bool) -> bool:
	var resultado: bool = false
	match self.selected:
		0:
			resultado = logico_and(a, b)
		1:
			resultado = logico_or(a, b)
		2:
			resultado = logico_not(a)
	return resultado

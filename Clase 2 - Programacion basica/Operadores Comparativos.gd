extends OptionButton

# Función para verificar si dos números son iguales
func es_igual(a: float, b: float) -> bool:
	return a == b

# Función para verificar si un número es mayor que otro
func es_mayor(a: float, b: float) -> bool:
	return a > b

# Función para verificar si un número es menor que otro
func es_menor(a: float, b: float) -> bool:
	return a < b

# Función para verificar si un número es mayor o igual que otro
func es_mayor_o_igual(a: float, b: float) -> bool:
	return a >= b

# Función para verificar si un número es menor o igual que otro
func es_menor_o_igual(a: float, b: float) -> bool:
	return a <= b

# Función para verificar si dos números son diferentes
func es_diferente(a: float, b: float) -> bool:
	return a != b

func ejecutar(a: float, b: float) -> bool:
	var resultado: bool = false
	match self.get_selected_id():
		0:
			resultado = es_igual(a, b)
		1:
			resultado = es_mayor(a, b)
		2:
			resultado = es_menor(a, b)
		3:
			resultado = es_diferente(a, b)
		4:
			resultado = es_mayor_o_igual(a, b)
		5:
			resultado = es_menor_o_igual(a, b)
			
	return resultado

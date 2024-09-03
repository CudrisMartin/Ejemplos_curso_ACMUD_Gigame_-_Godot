extends OptionButton

# Función para sumar dos números
func sumar(a: float, b: float) -> float:
	return a + b

# Función para restar dos números
func restar(a: float, b: float) -> float:
	return a - b

# Función para multiplicar dos números
func multiplicar(a: float, b: float) -> float:
	return a * b

# Función para dividir dos números
func dividir(a: float, b: float) -> float:
	if b != 0:
		return a / b
	else:
		print("Error: División por cero")
		return 0.0

func modulo(a: int, b: int) -> float:
	if b != 0:
		return a % b
	else:
		print("Error: División por cero")
		return 0.0

func ejecutar(a: float, b: float) -> float:
	var c: float = 0
	match self.get_selected_id():
		0:
			c = sumar(a,b)
		1:
			c = restar(a,b)
		2:
			c = multiplicar(a,b)
		3:
			c = dividir(a,b)
		4:
			c = modulo(a,b)
	return c

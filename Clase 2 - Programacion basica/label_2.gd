extends Label

@onready var line_edit1 = $"../../VBoxContainer/LineEdit2"
@onready var option_button = $"../../VBoxContainer2/OptionButton2"
@onready var line_edit2 = $"../../VBoxContainer3/LineEdit2"

var texto_guardado1: String = ""
var texto_guardado2: String = ""
var resultado: float

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_line_edit_2_text_submitted(new_text):
	texto_guardado1 = line_edit1.get_text()
	texto_guardado2 = line_edit2.get_text()
	resultado = option_button.ejecutar(texto_guardado1.to_float(), texto_guardado2.to_float())
	set_text(str(resultado))

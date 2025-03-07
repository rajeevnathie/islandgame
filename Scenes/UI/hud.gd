extends CanvasLayer

var passed_time := 0.0
var time_multiplier := 1.0

@onready var time = $TimeLabel
@onready var slowerButton = $SlowerButton
@onready var pauseButton = $PauseButton
@onready var fasterButton = $FasterButton

func _ready():
	slowerButton.pressed.connect(_on_slowerButton_pressed)
	pauseButton.pressed.connect(_on_pauseButton_pressed)
	fasterButton.pressed.connect(_on_fasterButton_pressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	passed_time += delta * time_multiplier
	time.text = "Time: " + str(snapped(passed_time, 0.01))

func _on_slowerButton_pressed():
	time_multiplier = 0.5

func _on_pauseButton_pressed():
	time_multiplier = 0.0

func _on_fasterButton_pressed():
	time_multiplier = 2.0

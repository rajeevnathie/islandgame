extends CanvasLayer


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
	time.text = "Time: " + str(snapped(GlobalVariables.passed_time, 0.01))

func _on_slowerButton_pressed():
	GlobalVariables.time_multiplier = 0.5

func _on_pauseButton_pressed():
	GlobalVariables.time_multiplier = 0.0

func _on_fasterButton_pressed():
	GlobalVariables.time_multiplier = 2.0

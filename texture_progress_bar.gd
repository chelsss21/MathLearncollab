extends TextureProgressBar

@export var duration : float = 12.0  # The duration of the timer in seconds
var time_left : float = duration  # Time remaining
var timer : float = 0.0  # Internal timer

# Reference to the TextureProgress node
@onready var timer_bar = $TextureProgress

func _ready():
	# Initialize the timer bar to the full duration
	timer_bar.value = duration

func _process(delta):
	if time_left > 0:
		# Reduce the time left based on the delta (time passed since last frame)
		time_left -= delta
		# Update the timer bar's progress
		timer_bar.value = duration - time_left
	else:
		# Timer finished, you can trigger any action here
		print("Timer finished!")

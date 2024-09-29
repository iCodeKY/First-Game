extends Node

var score = 0

@onready var score_label = $"Score Label"

func tambah_point():
	score += 1
	score_label.text = "Kamu Mendapatkan " + str(score) + " Coint. "

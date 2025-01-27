#(6.2.2020.)
extends Node

func _ready():
	$Zadatci/Panel.hide()
	$Krizanja.hide()
	$Svojstva.hide()
	$Main.show()
	pass

func _on_B_krizanja_pressed():
	$Main.hide()
	$Krizanja.show()
	pass # replace with function body

func _on_B_svojstva_pressed():
	$Svojstva.show()
	pass # replace with function body

func _on_B_back_pressed():
	$Main.show()
	$Krizanja.hide()
	$Svojstva.hide()
	pass # replace with function body


func _on_B_zadatak_pressed():
	$Zadatci/Panel.show()
	$Zadatci/Panel/Buttons.hide()
	pass # replace with function body
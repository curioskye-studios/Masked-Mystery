extends Node2D

@onready var clock = $Clock
@onready var mirror = $Mirror
@onready var glass = $Glass
@onready var knife = $Knife
@onready var cat = $Cat
@onready var carpet = $Carpet

@onready var perspective_label = $"MaskBackground/PerspectiveLabel"
@onready var description = $DescriptionBox/Description

@onready var yellow_mask = $MaskBackground/YellowMask
@onready var red_mask = $MaskBackground/RedMask
@onready var blue_mask = $MaskBackground/BlueMask

var yellow_mask_selected = true
var red_mask_selected = false
var blue_mask_selected = false

var texture_replacer = TextureReplacer.new()
var description_messages = DescriptionMessages.new()


func _ready() -> void: 
	yellow_mask.button_pressed = true

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Interrogation Screen/interrogation.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://Deduction Screen/deduction.tscn")
	
	
func _on_yellow_mask_toggled(toggled_on: bool) -> void:
	if toggled_on:
		yellow_mask_selected = true
		
		red_mask_selected = false
		red_mask.button_pressed = false
		blue_mask_selected = false
		blue_mask.button_pressed = false
		
		perspective_label.text = "Perspective: Anastasia"
		
		clear_descrption()
		texture_replacer.switch_to_yellow(clock, mirror, glass, knife, cat, carpet)

func _on_red_mask_toggled(toggled_on: bool) -> void:
	if toggled_on:
		red_mask_selected = true
		
		blue_mask_selected = false
		blue_mask.button_pressed = false
		yellow_mask_selected = false
		yellow_mask.button_pressed = false
		
		perspective_label.text = "Perspective: Theodora"
		
		clear_descrption()
		texture_replacer.switch_to_red(clock, mirror, glass, knife, cat, carpet)

func _on_blue_mask_toggled(toggled_on: bool) -> void:
	if toggled_on:
		blue_mask_selected = true
		
		red_mask_selected = false
		red_mask.button_pressed = false
		yellow_mask_selected = false
		yellow_mask.button_pressed = false
		
		perspective_label.text = "Perspective: Basil"
		
		clear_descrption()
		texture_replacer.switch_to_blue(clock, mirror, glass, knife, cat, carpet)


func clear_descrption():
	description.text = ""


func _on_clock_pressed() -> void:
	if yellow_mask_selected:
		description.text = description_messages.yellow_clock_description
	if red_mask_selected:
		description.text = description_messages.red_clock_description
	if blue_mask_selected:
		description.text = description_messages.blue_clock_description
	
func _on_mirror_pressed() -> void:
	if yellow_mask_selected:
		description.text = description_messages.yellow_mirror_description
	if red_mask_selected:
		description.text = description_messages.red_mirror_description
	if blue_mask_selected:
		description.text = description_messages.blue_mirror_description

func _on_glass_pressed() -> void:
	if yellow_mask_selected:
		description.text = description_messages.yellow_glass_description
	if red_mask_selected:
		description.text = description_messages.red_glass_description
	if blue_mask_selected:
		description.text = description_messages.blue_glass_description

func _on_knife_pressed() -> void:
	if yellow_mask_selected:
		description.text = description_messages.yellow_knife_description
	if red_mask_selected:
		description.text = description_messages.red_knife_description
	if blue_mask_selected:
		description.text = description_messages.blue_knife_description

func _on_cat_pressed() -> void:
	if yellow_mask_selected:
		description.text = description_messages.yellow_cat_description
	if red_mask_selected:
		description.text = description_messages.red_cat_description
	if blue_mask_selected:
		description.text = description_messages.blue_cat_description

func _on_carpet_pressed() -> void:
	if yellow_mask_selected:
		description.text = description_messages.yellow_carpet_description
	if red_mask_selected:
		description.text = description_messages.red_carpet_description
	if blue_mask_selected:
		description.text = description_messages.blue_carpet_description

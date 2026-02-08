extends Node2D

var yellow_statement_dict = { 
		1: "Fredrick and I weren’t particularly close. In fact, from the moment I received that invitation for this god forsaken party, I knew something was going to happen. That fancy knife being out was calling for a disaster of some kind.", 
		2: "That day Theodora and Fredrick were at it again with their weird tension that makes things uncomfortable for the rest of us. In fact, I’m almost certain Theodora messed with his clock to rile up Fredrick like she always does.", 
		3: "I saw Fredrick drinking quite a lot, but he’s notorious for being a quiet drunk, so I thought it was weird when I heard the sound of broken glass coming from the room at some point.",
		4: "Even Fredrick’s cat was around, which it never is. The sound scared the poor thing to bolt right out of the room. For me, I was busy the whole night stuffing myself with food to try to get my mind off the dreadful event.",
		5: "The jelly pasties served got all over my fingers and ended up all over Fredrick’s mirror. I tried to fix it, but I’d never seen a mess so stubborn. I promise that’s my only real involvement with that room.",
	}
	
var red_statement_dict = { 
		1: "Fredrick is a snobbish, stuck up man who’s always convinced I do things I don’t. But we unfortunately have always moved in the same circles. I’d never run my home the way he does.", 
		2: "The state of the place! That room was utterly dreadful. That hideous knife Fredrick boasts about was lying around to be easily stolen.", 
		3: "There was even a wine glass lying about that mysteriously ended up cracked, and some strange, unexplainable red stain whose origin I can't even posssibly begin to fathom!",
		4: "I’m always telling that man that if he gave me the estate, I would treat it the way it deserved. The only thing I did was take a look around the place. I don’t know why that silly cat suddenly bolted out the room.",
		5: "Quite frankly, it says more about Fredrick’s lack of discipline with the creature than anything. I had to eventually leave that room. Even the atmosphere had begun to feel embarrassing to witness.",
	}
	
var blue_statement_dict = { 
		1: "As Fredrick’s brother, I know firsthand how much he was beloved by everyone. He is loved for his talents, charming personality and impeccable work as an architect.", 
		2: "This might sound a bit strange coming from his older brother, but I’ve spent my entire life looking up to him, trying to learn everything he knows to one day be as great as he was. He’s left a huge legacy to fulfil, haha!", 
		3: "I know how much this party meant to him, so I made sure to take on as much work as I could with the planning to help him out. That room in particular was his favourite because of the grandfather clock our mother gave him.",
		4: "I had checked on the room to make sure everything was up to his standard. The place was a mess when I got there, so I ended up having to clean up a bit.",
		5: "Aside from some light cleaning with his cat hanging around, I didn’t see anything particularly suspicious. ",
		6: "Hearing what happened to him breaks my heart in ways I can’t even begin to articulate. Our family will never be the same.",
	}


@onready var yellow_statement = $"Yellow/Yellow Statement"
@onready var red_statement = $"Red/Red Statement"
@onready var blue_statement = $"Blue/Blue Statement"

@onready var yellow_tracker_label = $"Yellow/Yellow Tracker"
@onready var red_tracker_label = $"Red/Red Tracker"
@onready var blue_tracker_label = $"Blue/Blue Tracker"

var yellow_tracker = 1
var red_tracker = 1
var blue_tracker = 1

var yellow_dict_max = yellow_statement_dict.size()
var red_dict_max = red_statement_dict.size()
var blue_dict_max = blue_statement_dict.size()


func update_yellow_statement():
	yellow_statement.text = yellow_statement_dict[yellow_tracker]
	yellow_tracker_label.text = str(yellow_tracker) + "/" + str(yellow_dict_max) 
	
func update_red_statement():
	red_statement.text = red_statement_dict[red_tracker]
	red_tracker_label.text = str(red_tracker) + "/" + str(red_dict_max) 
	
func update_blue_statement():
	blue_statement.text = blue_statement_dict[blue_tracker]
	blue_tracker_label.text = str(blue_tracker) + "/" + str(blue_dict_max) 
	
	
func _ready() -> void:
	update_yellow_statement()
	update_red_statement()
	update_blue_statement()


func _on_yellow_back_pressed() -> void:
	# condition to loop statements
	if yellow_tracker == 1:
		yellow_tracker = yellow_dict_max
	
	elif yellow_tracker > 1:
		yellow_tracker -= 1
		
	update_yellow_statement()

func _on_yellow_next_pressed() -> void:
	# condition to loop statements
	if yellow_tracker == yellow_dict_max:
		yellow_tracker = 1
		
	elif yellow_tracker <= yellow_dict_max-1:
		yellow_tracker += 1
		
	update_yellow_statement()


func _on_red_back_pressed() -> void:
	# condition to loop statements
	if red_tracker == 1:
		red_tracker = red_dict_max
		
	elif red_tracker > 1:
		red_tracker -= 1
		
	update_red_statement()

func _on_red_next_pressed() -> void:
	# condition to loop statements
	if red_tracker == red_dict_max:
		red_tracker = 1
		
	elif red_tracker <= red_dict_max-1:
		red_tracker += 1
		
	update_red_statement()


func _on_blue_back_pressed() -> void:
	# condition to loop statements
	if blue_tracker == 1:
		blue_tracker = blue_dict_max
		
	elif blue_tracker > 1:
		blue_tracker -= 1
	
	update_blue_statement()

func _on_blue_next_pressed() -> void:
	# condition to loop statements
	if blue_tracker == blue_dict_max:
		blue_tracker = 1
		
	elif blue_tracker <= blue_dict_max-1:
		blue_tracker += 1
		
	update_blue_statement()


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Autopsy Screen/autopsy.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://Investigation Screen/Scenes/investigation.tscn")

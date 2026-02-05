extends Node2D

var yellow_statement_dict = { 
		1: "Fredrick and I weren’t particularly close. In fact, from the moment I received that invitation for this god forsaken party, I knew something was going to happen.", 
		2: "Red and green with their weird tension that makes things uncomfortable for the rest of us, that horrible clock that Green refuses to fix which I’m almost sure Red messed with to rile up Green like she always does,", 
		3: "the knife out calling for a disaster of some kind. I saw Green drinking quite a lot, but he’s notorious for being a quiet drunk, so I thought it was weird when I heard the sound of broken glass coming from the room at some point.",
		4: "Even Green’s cat was around, which it never is. The sound scared the poor thing to bolt right out the room. For me, I was busy the whole night stuffing myself with food to try to get my mind off the dreadful event.",
		5: "The jelly pasties served got all over my fingers and ended up all over Green’s mirror. I tried to fix it, but it was so stubborn. That’s my only involvement with that room.",
	}
var red_statement_dict = { 
		1: "Green is a snobbish, stuck up man who’s always convinced I do things I don’t. But we unfortunately have always moved in the same circles.", 
		2: "I’d never run my home the way he does. The state of the place! That room was utterly dreadful. That hideous knife Green boasts about lying around to be easily stolen,", 
		3: "a wine glass laying about that mysteriously ended up cracked, some strange, unexplainable red stain that I can’t fathom where it could've possibly come from! I’m always telling that man that if I had owned the estate, I would’ve treated it the way it deserved.",
		4: "The only thing I did was take a look around the place. I don’t know why that silly cat suddenly bolted out the room. Quite frankly, it says more about Green’s lack of discipline than anything else.",
		5: "I had to eventually leave the room with the way even the atmosphere was starting to feel embarrassing.",
	}
var blue_statement_dict = { 
		1: "As Green’s brother, I know firsthand how much he was beloved by everyone. He is loved for his talents, charming personality and impeccable work as an architect.", 
		2: "This might sound a bit strange coming from his older brother, but I’ve spent my entire life looking up to him, trying to learn everything he knows to one day be as great as he was.", 
		3: "He’s leaving a huge legacy to fulfil, haha! I know how much this party meant to him, so I made sure to take on as much work as I could with the planning to help him out.",
		4: "That room in particular was his favourite because of the grandfather clock our mother gave him. I had checked on the room to make sure everything was up to his standard. The place was a mess when I got there, so I ended up having to clean up a bit. ",
		5: "Aside from some light cleaning with his cat hanging around, I didn’t see anything particularly suspicious. Hearing what happened to him breaks my heart in ways I can’t even begin to articulate. Our family will never be the same.",
	}


@onready var yellow_statement = $"Yellow/Yellow Statement"
@onready var red_statement = $"Red/Red Statement"
@onready var blue_statement = $"Blue/Blue Statement"

var yellow_tracker = 1
var red_tracker = 1
var blue_tracker = 1

func _on_yellow_back_pressed() -> void:
	if yellow_tracker > 1:
		yellow_tracker -= 1
		yellow_statement.text = yellow_statement_dict[yellow_tracker]

func _on_yellow_next_pressed() -> void:	
	if yellow_tracker <= 4:
		yellow_tracker += 1
		yellow_statement.text = yellow_statement_dict[yellow_tracker]


func _on_red_back_pressed() -> void:
	if red_tracker > 1:
		red_tracker -= 1
		red_statement.text = red_statement_dict[red_tracker]

func _on_red_next_pressed() -> void:
	if red_tracker <= 4:
		red_tracker += 1
		red_statement.text = red_statement_dict[red_tracker]


func _on_blue_back_pressed() -> void:
	if blue_tracker > 1:
		blue_tracker -= 1
		blue_statement.text = blue_statement_dict[blue_tracker]

func _on_blue_next_pressed() -> void:
	if blue_tracker <= 4:
		blue_tracker += 1
		blue_statement.text = blue_statement_dict[blue_tracker]


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Autopsy Screen/autopsy.tscn")

func _on_next_pressed() -> void:
	get_tree().change_scene_to_file("res://Investigation Screen/Scenes/blue_scene_1.tscn")

extends Node

@onready var UI = $UserInterface
@onready var GenerateButton = $GenerateLibraryButton
@onready var Printer = $PrinterViewport
@onready var ToolCam = $InterfaceViewport
@onready var wLabel = $WordLabel
@onready var SpotLightPos : Vector2 = $Spotlight.global_position
@onready var BankPos : Vector2 = $Bank.global_position

var shouldPic := false
var index := -1;

var TraitSymbols : Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	GenerateButton.connect("button_up",GenerateLibrary)
	ToolCam.make_current()
	RenderingServer.connect("frame_post_draw",TakePicture)
	pass # Replace with function body.

func ArrToString(input : Array)->String:
	var result = "["
	for item in input:
		result += item + ", "
	
	result = result.trim_suffix(", ")
	result += "]"
	return result;

func Make_OutDirectory():
	if(DirAccess.dir_exists_absolute("res://Output")):
		#OutDir = DirAccess.open("res://Output")
		if(!FileAccess.file_exists("res://Output/.gdignore")):
			FileAccess.open("res://Output/.gdignore",FileAccess.WRITE).close()
	else:
		DirAccess.make_dir_absolute("res://Output")
		FileAccess.open("res://Output/.gdignore",FileAccess.WRITE).close()
		#OutDir = DirAccess.open("res://Output")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(index != -1):
		if (index < UI.WordsDict.size()):
			var key = UI.WordsDict.keys()[index]
			wLabel.text = key + " " + ArrToString(UI.WordsDict[key])
		else:
			index = -1;
			ToolCam.make_current()
			shouldPic = false;
	
	for key in UI.WordsDict.keys():
		for word in UI.WordsDict[key]:
			if(!TraitSymbols.has(word)):
				var tmp = Generator.gen()
				tmp.global_position = BankPos
				$Library.add_child(tmp)
				TraitSymbols.get_or_add(word, tmp)
				print(ArrToString(TraitSymbols.keys()))

	pass




func GenerateLibrary():
	#Switch to Print Mode
	Make_OutDirectory()
	index = 0
	shouldPic = true
	Printer.make_current()

func TakePicture():
	if(shouldPic):
		Printer.get_viewport().get_texture().get_image().save_png("res://Output/" + UI.WordsDict.keys()[index] +".png")
		index += 1
		#shouldPic = false
		#
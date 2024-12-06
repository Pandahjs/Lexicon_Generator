
@tool
extends Node2D
"""
 NOTE. IN CASE THAT YOU WANT TO CORRECT A WORDS TRAITS JUST PUT IT'S NAME
 ON THE CREATE WORD PART, SELECT THE CORRECT ONES A CREATE IT.
 EVEN IF IN THE RIGHT WILL APPEAR DUPILICATE THE JSON WON'T 
"""

var path = "res://data/dictionary.json";
var new_word_button;
var new_word_name : TextEdit;
var new_trait_button;
var new_trait_name : TextEdit;
var num_traits : int
var traits_array : Array = []  # Array to store the checkboxes
var traits_y_offset = 30;
var all_words = []
var all_info : TextEdit;
	
# Add the button explicitly if not being created by the inspector
func _ready():
	_createTraitBox()
	_createWordBox()
	_createCurrentData()
	num_traits = 0
	_read(path)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _createCurrentData():
	# Create a new TextEdit (multi-line text box)
	all_info = TextEdit.new()
	
	all_info.editable = false  # Disable user editing
	
	# Set properties of the TextEdit
	all_info.set_position(Vector2(600, 0))  # Position the text box at (0, 0)
	all_info.text = "YOUR CURRENT DATA"  # Set default text
	
	# Set the minimum size (optional, for resizing)
	var new_size = Vector2(300, 500)
	all_info.size = new_size  # Set a minimum width and height

	# Add the TextEdit as a child of the current node (you can add it to a parent container)
	add_child(all_info)
	pass

func _read(path : String):
	# Open the file in read mode
	var file = FileAccess.open(path, FileAccess.READ)
	if file:
		var json_string = file.get_as_text()  # Read the file content as a string
		file.close()
		
		# Parse the JSON string into an array (or dictionary)
		var json = JSON.new()
		var error = json.parse(json_string)
		
		if error == OK:
			var data = json.get_data() # This will be an array of word objects
			# Check if data was successfully loaded
			if data != null:
				# Process the data (for example, print it)
				for word_data in data:
					all_words.append(word_data)
					_writeWord(word_data["Word"],word_data["Traits"])
					for read_trait in word_data["Traits"]:
						_createCheck(read_trait)
		else:
			print("Error parsing JSON.")
		# Close the file after writing
		file.close()
	else:
		print("Failed to open the file.")
pass

func _createCheck(new_name = "default"):
	for checkbox in traits_array:# Check for duplicates
		if checkbox is CheckBox:  # Make sure the element is a CheckBox
			if checkbox.text == new_name:  # Check if the name already exists in the array
				return
			
	var checkbox = CheckBox.new()  # Create a new CheckBox
	checkbox.text = new_name  # Set the label text
	checkbox.set_position(Vector2(0, 150 + traits_y_offset*num_traits))  # Set its position
	# Optionally, connect the signal for each checkbox
	 # Add the checkbox to the scene
	add_child(checkbox)
	# Store the checkbox in the array
	traits_array.append(checkbox)
	num_traits +=1
	if(all_words.is_empty()):
		var data = {
				"Word": "ALLTRAITS",
				"Traits": []
			}
		all_words.append(data)
	
	for data in all_words:
		if data["Word"] == "ALLTRAITS":
			for each_trait in data["Traits"]:
				if each_trait == new_name:
					return
			data["Traits"].append(new_name)
			_save_word(true)
			return
	
	pass
	

func _createTraitBox():
	# Create a new TextEdit (multi-line text box)
	new_trait_name = TextEdit.new()
	
	# Set properties of the TextEdit
	new_trait_name.set_position(Vector2(0, 0))  # Position the text box at (0, 0)
	new_trait_name.text = "Write trait name"  # Set default text
	
	# Set the minimum size (optional, for resizing)
	var new_size = Vector2(200, 50)
	new_trait_name.size = new_size  # Set a minimum width and height

	# Add the TextEdit as a child of the current node (you can add it to a parent container)
	add_child(new_trait_name)
	
	#CREATE A BUTTON FOR THE TEXT
	if !new_trait_button:
		new_trait_button = Button.new()
		new_trait_button.text = "CREATE NEW TRAIT"
		new_trait_button.connect("pressed",_on_trait_button_pressed.bind())
		add_child(new_trait_button)
		new_trait_button.set_position(Vector2(new_size.x + 20, 0))
	
	pass
	
func _on_trait_button_pressed():
	_createCheck(new_trait_name.text)
	pass

func _createWordBox():
	# Create a new TextEdit (multi-line text box)
	new_word_name = TextEdit.new()
	
	# Set properties of the TextEdit
	var new_pos = Vector2(0, 100)
	new_word_name.set_position(new_pos)  # Position the text box at (0, 0)
	new_word_name.text = "Write word name"  # Set default text
	
	# Set the minimum size (optional, for resizing)
	var new_size = Vector2(200, 50)
	new_word_name.size = new_size  # Set a minimum width and height

	# Add the TextEdit as a child of the current node (you can add it to a parent container)
	add_child(new_word_name)
	
	#CREATE A BUTTON FOR THE TEXT
	if !new_word_button:
		new_word_button = Button.new()
		new_word_button.text = "CREATE NEW WORD"
		new_word_button.connect("pressed",_save_word.bind())
		add_child(new_word_button)
		new_word_button.set_position(Vector2(new_size.x + 20, new_pos.y))
	pass
	
"""
 This function will be called to serialize the  groups names and
their attributes. 
"""
func _save_word(alltraits = false):
	var file = FileAccess.open(path, FileAccess.WRITE)
	
	# Open the file for writing (will create the file if it doesn't exist)
	if file:
		if(!alltraits):
			var data = {
				"Word": new_word_name.text,
				"Traits": []
			}
		
			for checkbox in traits_array:
				if(checkbox.button_pressed):
					data["Traits"].append(checkbox.text)
				
			_writeWord(data["Word"],data["Traits"])
			all_words.append(data)
		# Create an instance of the JSON class
		var json = JSON.new()
		# Convert the data to a JSON string
		var json_string = json.stringify(all_words)
		
		# Write the JSON string to the file
		file.store_string(json_string)
		
		# Close the file after writing
		file.close()
		print("Data written to file successfully.")
	else:
		print("Failed to open file for writing.")
	pass
	

func _writeWord(new_word : String,new_word_data : Array) :
	if new_word == "ALLTRAITS":
		return
		
	if all_info.text.contains(new_word):
		for data in all_words:
			if(data["Word"] == new_word):
				all_words.erase(data)
				break
				
	all_info.text += "\n" # start a new line
	all_info.text += new_word
	all_info.text += ": "
	for word_trait in new_word_data:
		all_info.text += word_trait
		all_info.text += ", "
	all_info.text = all_info.text.substr(0,all_info.text.length() - 2)
		
pass


# Function to check if TextEdit is empty
func is_text_edit_empty(name : TextEdit) -> bool:
	return name.text.strip_edges() == ""  # Check if the text is empty or only whitespace

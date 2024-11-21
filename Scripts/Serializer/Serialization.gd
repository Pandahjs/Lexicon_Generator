
@tool
extends Node2D
"""
 (For the moment)
 -This file will be attached to an empty object of the scene and will have two
functions:
__SAVING__:
 -In the editor we will create the 'simbols' and name it with 
whichever group is identified.
 -In the editor we will point the global variable to the 'simbol' created
and start the process of saving.
 -First it will seach in the dictionay if the group already exist. If there
is already a definition IT WILL REPLACE THE PREVIOUS DEFINITION of the simbol
with the new one. If not it will create a new instace of the definition
 
__LOADING__:
 -In the gloval variable chose the namre of the simbol that wants to be created.
 -Click on create. This button on colled will create a NEW OBJECT in the 
ORIGINE
"""

@export var test_int: int = 100

# Define custom properties for the Inspector
func _get_property_list() -> Array:
	var props = []
	
	# Add a label or button to the Inspector (using TYPE_OBJECT for buttons)
	props.append({
		"name": "execute_action_button",  # Unique name for the button
		"type": TYPE_NIL,                 # TYPE_NIL means no value, just a button
		"usage": PROPERTY_USAGE_EDITOR,   # Make it editable only in the editor
		"hint": PROPERTY_HINT_NONE        # Optional: No specific hint
	})

	return props

# Handle custom properties when their values are set
func _set(property: StringName, value: Variant) -> bool:
	if property == "execute_action_button":
		perform_action()  # Call the custom function when the button is clicked
		return true  # Indicate that the property was handled
	return false  # Indicate that the property was not handled

# Provide the value for custom properties (optional in this case)
func _get(property: StringName) -> Variant:
	return null  # Return null since the button doesn't hold a value

# The custom function to be called when the button is pressed
func perform_action():
	print("Button clicked! Performing action...")

# Add the button explicitly if not being created by the inspector
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


"""
 This function will be called to serialize the  groups names and
their attributes. 
"""
func _save(file_path : String):
	var file = FileAccess.open(file_path, FileAccess.WRITE)
	if file:
		print("Data saved to", file_path)
	else:
		print("It could not open file")
	return

"""
 This function will be called to serialize the  groups names and
their attributes
"""
func _load(file_path : String):
	var file = FileAccess.open(file_path, FileAccess.READ)
	if file:
		print("Data saved to", file_path)
	else:
		print("It could not open file")
	return

extends Node
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

var test_int: int = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


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

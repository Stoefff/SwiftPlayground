## Lecture and practice for IBAction last time - missed
Target action pattern

## Connection between controller, Segue - 14.11.18

### Segue
Connection between the view controllers, generates new screen(via XML)

**When a screen is not needed it is free from the memory**

### Segue options:
Segue allows different controller connection (and animation)
for a action e.g. closing action deletes the present controller and opens
the previous opened

### Navigation controller
Handles controllers and their segue like a queue, and present override function
to program the pop and push action. If we override this functions, instead of
of writing simple IBActions, we could give to context to the nav bar, and
this grands us some useful functions:
* Stack, queue like automatic structure of the controllers
* This stack grands us automatic memory handling
* Also some push pop functionality and context

### .xib - Abstraction of the the xml, building block of the storyboard
.xib Describes a single screen but without segue functionality


### unit?() of a controller
Used for passing data from a prev controller to the current

### loadView() - never used

### viewDidLoad() - does not know orientation
Here is a good place to unit child controllers
**Does not know orientation**

### willAppear()
Good place to make connection or update the model

### viewWillLayutSubView()
Inform about changes in the view, orientation, interaction etc.

### viewDidAppear()
Updates through time, fancy animation etc

### viewDidDisappear()
Fancy exit animation

### viewDidDisappear()
Cleaning the data - unsubing from observables etc, deleting notifications

### deinit()
Not always called when we expect it be!

### didRecieveMemoryWarning()
This function will warn us that the memory is close to end.
If it ends the app will be terminated. Here is the place to de-cache unnecessary
data

### prepare()
Good place to handle passed values from a mother controller and update the model
form them. Its good to use the segue methods

## About the project
### Good way to start
* Nav bar
* Tab bar

### Things to be done
* List of product
* Products are loaded form json file on a server
* When a product is bought the app send an email

### Bonus
* Many themes for the app

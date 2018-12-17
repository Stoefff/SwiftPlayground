### Lecture 3 - 24.07.18

## UIKit
* Contains all the basic views
* Complex view such as a map view is not a part of UIKit  

### Filosophy of UIKit:
Everything is a rectangle and we should choose what we draw it and in it


### UIApplication
* Singleton
* The root of all classes of the application
* It is the class that communicates directly with the OS
* Has one protocol app delegate ???
* We should override some functions used for handling the starting/ending
behavior of the application

### Application extensions
With this set of classes we could easily write extension for any iOS application
such as a customized keyboard

### UIWindow
* The view which has a frame contain the whole screen
* The bound of the UIWindow contains a hierarchy of UIViews
* The cordinate system start at 0,0 which is at the **left top corner** and
this grow by positives values down and

### The best question for interview is:
What is the difference between frame and bound for e.g.

### UIView
* A tree of UIView structures or other child classes  
**A child cordinates are relative to the parent**
* Deep nesting causes lag
* All views should be .init() -ted
* All views should be added to the `main Sub view for the window` by functions
* Static views are cached, rather than redrawn
* Has many elements which can be customized by functions such as:
** Colors
** Frame and border
** Gesture recognizer

#### Masks
The basic views could be interfered with by something called masks,
which change the `CALayer` of the view, or in other words these masks change
the way these views are drawn on the screen  
Access with:  
`randomView.layer.randomFunctionAboutTheLayer()`

## Swift Generics
* The same as C++ templates
* The syntax seems pretty much the same
* Check github of Swift for badass generics e.g. for sorting
* Support extensions 

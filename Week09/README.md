### Lecture - 28.11.12

## Animations
Big part of the application, every application has them

### Core animation - rendering engine
Uses SA layer and its properties and just the view

```swift
let animation = CABasicAnimation(keyPath: #keyPath(CALayer.opacity));
```

keyPAth is the property that the animation uses and changes

### Animation properties
* duration
```swift
animation.duration = 0.3 //seks
```
* fromValue - the start value of the passed in the constructor propertie
* toValue - the ending value
* repeatCount
* beginTime - usually initialized with CACurrentMediaTime()

**never forget to actually add the animation to the view:**
```swift
testImageView.layer.add(animation, forKey: "FadeOut")
```
The key describes the animation

### Animation groups
Animations could be grouped for secuential rendering of the anmations. Grouping
automatically handles things for us

### Animations as the view properties
Save us code, because we could just override methods of the view and describe
what is does to the view

### View Animate options:
Include the function of speed of animation:
* Ease in
* Ease out
* For more check on Google

### Animation transform method
The animation could change some properties of the view it's called upon like
a cordinates, scale factor etc. It also support identity method

### Animation with spring damping
Spring damping could be added as a parameter and its velocity for a more
smooth animation

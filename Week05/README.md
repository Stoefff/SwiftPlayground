### Lecture - 31.10.18

## MVC pattern

### View

### Controller

### Model

### Connection between the modules

### How to update the model smartly:
* With Delegate pattern - check
* With Observables - very kinda heavy code with this implementation
* With a fucking closures every where- I do not understand anything  

So when we change the model we should always update the view too

**Re-arrange parameters with `Ctrl + I`**  

**`TODO`: Check the meaning of weak and normal reference**   
**`TODO`: Check the ARD? or the cleaner of the memory in Swift which is way
more powerful that the normal garbage collector used in other languages**

### Lazy vars
Only initialized when a operation with it is called upon. Use for handling vars
with big data

## Swift - xCode continue

Latest version of the language - v. 4.2

Swift is compiled language

### Variables and constants
* `var`: strongly typed, even if it doesn't seem so
* `let`: a constant

A type class could be specified with `var str::String = "Goshe"`

### If operator
Same as c++ but the `brackets are not necessary`

**The ; is also not necessary**

**Brackets ARE necessary**

**Trinary is the same as in c++**

### `??` operator
condition ?? value

### Switch operator
Very like c++ switch with some differences:
* `break` is explicit, no need to write it
* `default` is necessary, only not if we have all the cases covered
* `fallthrough` key word is present
* number intervals are possible: `case 10..<100`
* all cases should not have a section(сечение)


### for loop
Good syntax for dictionary and maps is supported
```swift
for index in 1..5 {
    print("\(index) po 5 e \(index*5)")
}
```

### Tuples - нарадена n-орка
Supported in Swift
`let point2:(Float, Float) = (12, 12)`  
**The members of tuples could be different types**  
Elements of the tuple are accessed with indexes: v.0 , v.1  

### Optional types

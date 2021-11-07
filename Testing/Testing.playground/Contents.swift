import UIKit


// Variables
var currentSubject = "Mathematics"
var greeting = "Hello World!"

print(currentSubject)
print(greeting)

currentSubject = "Science"
greeting = "Bye World!"
print(currentSubject)
print(greeting)

var x = 5
var y = 2
print(x*y)
print(x/y)
print(x+y)
print(x-y)


// Data types
var myName:String = "Puncher"
var myAge:Int = 16
var myGrade:Float = 5.7
var myGender:String = "Male"

var mySentence:String = "My name is " + myName + " and I'm " + String(myAge) + " years old. My gender is " + myGender + " and my grade is " + String(myGrade) + "."
print(mySentence)


// If statements
var num:Int = 5
var num2:Int = 5

if num >= 10 && num2 >= 10{
    print("nice")
}
else if num >= 10 || num2 >= 10{
    print("almost")
}
else{
    print("bad")
}


// for loop
var list:Array = ["hello", "world"]
var s:Int = 0

for i in 1...3{
    print(i)
}

for _ in 1...10{
    s += 1
}

for c in list{
    print(c)
}

print(s)


// while loop
var count:Int = 1

while count <= 4{
    print("Hello!!")
    
    count += 1
}


// repeat while loop (do while in C)
var count2:Int = 1

repeat{
    print("Bye!!")
    count2 -= 1
    
}while count2 > 0


// Functions
func sumTwoNumbers(){
    let a = 1
    let b = 2
    let c = a + b
    print("Sum: \(c)")
}
sumTwoNumbers()

func sum(a: Int, b: Int) -> Int{
    
    return a+b
}
print(sum(a: 2, b: 10))

func strlen(string: String) -> Int {
    var count:Int = 0
    for _ in string{
        count += 1
    }
    return count
}
var str = "Puncher"
var lengthString = strlen(string: str)
print("Length of \(str): \(lengthString)")


// Classes
class human{
    var name:String = ""
    var age:Int = 0
    var size:Float = 0
    
    func incrSize(){
        size += 0.01
    }
    
    func decrSize(){
        size -= 0.01
    }
}

let human1 = human()
human1.name = "Tom"
human1.age = 34
human1.size = 1.65
human1.decrSize()
human1.decrSize()


let human2 = human()
human2.name = "Max"
human2.age = 27
human2.size = 1.91
human2.incrSize()

print(human1.name, human1.age, human1.size)
print(human2.name, human2.age, human2.size)


// Inheritance (Subclasses)
class Car{
    var topSpeed = 200
    
    func drive(){
        print("Driving at \(topSpeed)")
    }
    
}

class FutureCar : Car{
    
    override func drive() {
        super.drive()                         // executing drive of superclass
        print("Driving at \(topSpeed + 50)")
    }
    
    func fly(){
        print("Flying")
    }
}

let myRide = Car()
myRide.drive()

let myNewRide = FutureCar()
myNewRide.topSpeed = 300
myNewRide.drive()
myNewRide.fly()


// Initialization (Init)
class Person {
    
    var name:String = ""
    var age:Int = 0
    var size:Float = 0
    
    init(name: String, age: Int, size: Float){
        self.name = name
        self.age = age
        self.size = size
    }
}
let person1 = Person(name: "Puncher", age: 16, size: 1.75)
let person2 = Person(name: "Steve", age: 55, size: 1.97)
print(person1.name, person1.age, person1.size)
print(person2.name, person2.age, person2.size)


// Optionals
class myBlog{
    
    // var title = ""
    // var body = ""
    // var author = ""
    // var numberOfComments = 0

    var title:String?
    var body:String?
    var author:String?
    var numberOfComments:Int?
    
}

let blog1 = myBlog()
blog1.title = "Blog X"
print(blog1.title)              // not unwrapped

if let title = blog1.title{     // raw unwrapping | 'Optional("Blog X")' -> "Blog X"
    print(title)
}

print(blog1.title!)             // better unwrapping (only works if not 'nil')

if blog1.title != nil{          // best and easiest way to unwrap (works if 'nil' or not)
    print(blog1.title!)         //
}



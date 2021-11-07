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
var sum:Int = 0

for i in 1...3{
    print(i)
}

for _ in 1...10{
    sum += 1
}

for c in list{
    print(c)
}

print(sum)


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

// Playground - noun: a place where people can play

import UIKit

class Person {
    var name : String
    var age : Int
    
    func description() -> String {
        return "\(name) 年龄是: \(age)"
    }
    convenience init () {
        self.init(name: "Tony")
        self.age = 18
    }
    convenience init (name : String) {
        self.init(name: name, age: 18)
    }
    init (name : String, age : Int) {
        self.name = name
        self.age  = age
    }
}

class Student : Person {
    var school : String
    init (name : String, age : Int, school : String) {
        self.school = school
        super.init(name : name, age : age)
        self.name = "Tom"
        self.age = 28
    }
    convenience override init (name : String, age : Int) {
        self.init(name : name, age : age, school : "清华大学")
        self.name = "Tom"
    }
}

let student = Student()
println("学生: \(student.description())")


// Playground - noun: a place where people can play

class Employee {
    var no : Int = 0
    var name : String = ""
    var job : String?
    var salary : Double = 0
    var dept : Department?
}


struct Department {
    var no : Int = 0
    var name : String = ""
}

var emp = Employee()
var dept = Department()

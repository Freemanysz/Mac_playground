// Playground - noun: a place where people can play


func makeArray() -> (String)->[String] {
    
    var ary:[String] = [String]()
    
    func addElement(element:String) -> [String] {
        ary.append(element)
        return ary
    }
    
    return addElement
}

let f1 = makeArray()
println("---f1---")
println(f1("张三"))
println(f1("李四"))
println(f1("王五"))

println("---f2---")
let f2 = makeArray()
println(f2("刘备"))
println(f2("关羽"))
println(f2("张飞"))


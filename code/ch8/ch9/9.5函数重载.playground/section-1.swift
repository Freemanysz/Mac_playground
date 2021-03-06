// Playground - noun: a place where people can play

func receive(i : Int)  {
    println("接收一个Int类型数据 i=\(i)")
}

func receive(d :Double) {
    println("接收一个Doubel类型数据 d=\(d)")
}

func receive(x :Int, y :Int)  {
    println("接收两个Int类型数据 x=\(x) y=\(y)")
}

func receive(i :Int) ->Int {
    println("接收一个Int类型数据 i=\(i), 返回值类型是Int")
    return i*i
}

func receive(param i : Int) {
    println("接收一个Int类型数据 i=\(i)，外部参数名param")
   
}


let a1: Int = receive(10)

let a2:() = receive(10)

let a3:Void = receive(10)

let a4:() = receive(10.0)

let a5:() = receive(10, 10)

let a6:() = receive(param: 10)


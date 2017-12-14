//: Playground - noun: a place where people can play

import UIKit

var optionalname : String? = "lad"
var optionalemail : String? = "123@gmail.com"
var unwrappedOptional : String! = "It's Unwrapped!"

if let name = optionalname,
    let email = optionalemail {
        print(name, email)
        print(optionalemail!)
        print(unwrappedOptional)
    }

func hello(_ name : String, time : Int = 4) -> String {
    var string = ""
    for _ in 0..<time {
        string += "\(name)님 안녕하세요!\n"
    }
    return string
}

func sum(_ numbers : Int ...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

func hello(name : String, time : Int){
    func message(name : String) -> String{
        return "\(name)님 안녕하세요!"
    }
    for _ in 0..<time {
        print(message(name : name))
        
    }
}

print(hello("blogcin"))
print(sum(3,5,7,8,4))
hello(name: "op", time: 3)


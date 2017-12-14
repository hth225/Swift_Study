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

print(hello("blogcin"))

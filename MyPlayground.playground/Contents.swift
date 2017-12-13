//: Playground - noun: a place where people can play

import UIKit

var optionalname : String? = "lad"
var optionalemail : String? = "123@gmail.com"

if let name = optionalname,
    let email = optionalemail {
        print(name, email)
    }

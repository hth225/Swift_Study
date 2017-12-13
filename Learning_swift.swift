//
//  Learning_swift.swift
//  
//
//  Created by LAD on 2017. 12. 13..
//

import Foundation

var optionalname : String? = "lad"
var optionalemail : String? = "123@gmail.com"

if let name = optionalname,
    let email = optionalemail {
    print(name, email)
}

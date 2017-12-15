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

func hello(_ name : String, time : Int = 4) -> String { //파라미터 기본값 설정으로 파라미터 생략 가능
    var string = ""
    for _ in 0..<time {
        string += "\(name)님 안녕하세요!\n"
    }
    return string
}

func sum(_ numbers : Int ...) -> Int { // ... 으로 개수가 정해지지 않은 파라미터를 받음
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

func hello(name : String, time : Int){ //함수 안에 함수 작성
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

//-------------------------------------------------------------------------

func hellogenerator(message : String) -> (String, String) -> String {
    //문자열을 받아서 문자열을 반환 (여러개의 파라미터를 받는다면 (String, String)과 같은 형태 사용.
    return { fname, lname in //컴파일러의 타입 추론 덕택에, hellogenerator에서 반환하는 타입을 토대로 어떤 파라미터를 받고 반환하는지 추론하기 때문에 생략 가능.
        //중괄호로 감싼 실행가능한 코드 블럭, 클로저 in 키워드를 이용해서 파라미터, 반환타입영역과 실제 클로저 코드 영역을 분리.
        return fname + lname + message
    }
}

//-------------------------------------------------------------------------

let hey = hellogenerator(message: ", Greetings!")
print(hey("lad", "neo"))

let greet: ((String, String) -> String)? = { $1 + $0 + ", hello!"}
greet?("mann", "coo")


//------------------------------------------------------------------------


func manipulate(number : Int, using block: (Int) -> Int) -> Int
{
    return block(number)
}

manipulate(number: 10, using: { (num : Int) -> Int in
    return num * 2
})



//: Playground - noun: a place where people can play
//-------------------------------------------------------------------------
// +, - 는 함수로써, (Int, Int) -> Int 형태임.

var currentNumber : Int = 0
func calc (_ number : Int, _ calcMethod : (Int, Int) -> Int) -> Void { //2. number에 10, calcMethod 에 +가 들어감
    currentNumber = calcMethod(currentNumber, number) //3. calcMethod(0,10) 이므로 currentNumber = 10
}

calc(10, +) //1. 파라미터로 10과 + 연산자를 받음
print(currentNumber)

calc(20, +)
print(currentNumber)

calc(30, -)
print(currentNumber)

//-------------------------------------------------------------------------






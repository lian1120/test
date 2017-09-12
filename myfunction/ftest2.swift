//
//  ftest2.swift
//  myfunction
//
//  Created by 江禮安 on 2017/9/12.
//  Copyright © 2017年 江禮安. All rights reserved.
//

import Foundation
func ftest2() {
    var  brad4:(_ :Int) -> Void  = allen1
    brad4(2)
    print("-----")
    brad4 = allen2
    brad4(7)
    print("-----")
    brad4 = allen3
    brad4(5)
    print("-----")
    
    
    
    
    var op:(_:Int,_:Int) ->Int = add
    op = add
    print(op(20,14))
    op = subtract
    print(op(20,14))
    op = multiply
    print(op(20,14))
    op = divide
    print(op(20,14))
    
    
    print(brad5(what: add, x: 30, y: 7))
    print(brad5(what: subtract, x: 30, y: 7))
    print(brad5(what: multiply, x: 30, y: 7))
    print(brad5(what: divide, x: 30, y: 7))
    
    let letters = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
    let alpha:Character = "Z"
    let n12 = indexOf(source:letters, find:alpha) + 10  //Int(3),else return -1
    let n1 = n12 / 10
    let n2 = n12 % 10
    print("\(n1), \(n2)")
    
    let dic:[String:Int] = ["A":10,"B":11,"C":12,"D":13,"E":14,"F":14,
                            "G":14,"H":14,"J":14,"K":14,"L":14,"M":14,
                            "N":14,"P":14,"Q":14,"R":14,"S":14,"T":14,
                            "U":14,"V":14,"X":14,"Y":14,"W":14,"Z":14,
                            "I":14,"O":14]
    print(dic["A"]!)
    
    // return 2  從字串尾端算起的位置
    let v1 = indexOf(source:letters, findlast:alpha)
    print(v1)
    
    //return 從字串尾端算起的位置
    let v2 = indexOf2(source: letters, findlast: alpha)
    print(v2)
    print("----------")
    
    //不定個數參數的使用
    allen5()
    allen5("Peter", "Hellen", "Willam")
    
    allen6(value: 66)
    allen6(value: 78)
    
    print("----------")
    
    //function的回傳值，可以為資料組
    let (a, b, c) = allen7()
    print("\(a) , \(b) , \(c)")
}

func allen7() -> (Int, Double, String) {
    return (1,4.6,"Bill")
}


func allen6(value x:Int) {
    print(x)
}


func allen5(_ x:String...) {
    //x:String =>資料型態是Array<String>
    for name in x {
        print("Hello, \(name).")
    }
}

func indexOf(source:String, findlast:Character) -> Int {
    /*
     var ary:[Character] = Array()
     for c in ary.count {
         ary += [c]
     }
     print(ary)
     */
    
    let cs = Array(source.characters)
    
    /*
    //return 1,4,7,10
    for i in stride(from: 1, to: 10, by: 3) {
        print(i)
    }
    //return 1,4,7,10
    for i in stride(from: 1, through: 10, by: 3) {
        print(i)
    }
    */
    
    var ret = 0, ii = 1
    for i in stride(from: cs.count - 1, through: 0, by: -1) {
        if cs[i] == findlast{
            ret += ii
            break
        }
        ii += 1
    }
    return ret
}

func indexOf2(source:String, findlast:Character) ->Int {
    var i = 0, ret = 1
    let sr = reverse(source)
    for c in sr.characters {
        if findlast == c{
            ret += i
            break
        }
        i += 1
    }
    return ret
}

func reverse(_ s: String) -> String {
    var str = ""
    //.characters gives the character view of the string passed. You can think of it as array of characters.
    for character in s.characters {
        str = "\(character)" + str
        //This will help you understand the logic.
        //!+""
        //p+!
        //l+p! ... goes this way
        //print ( str)
    }
    return str
}

//找尋 目標字元，在 來源字串 的第幾個位置，回傳Int位置
func indexOf(source:String, find:Character) -> Int {
    var i = 1, ret = -1
    for c in source.characters {
        if find == c {
            ret += i
            break
            }
        i += 1
        }
        return ret
}

//function的參數有其它的function
func brad5(what:(Int,Int)->Int, x:Int, y:Int) ->String {
    print("start..")
    let s1 = what(x,y)
    return "result = \(s1)"
}


func add(x:Int,y:Int) ->Int {
    let result = x + y
    return result
}

func subtract(x:Int,y:Int) ->Int {
    let result = x - y
    return result
}
func multiply(x:Int,y:Int) ->Int {
    let result = x * y
    return result
}
func divide(x:Int,y:Int) ->Int {
    let result = x / y
    return result
}





func allen1(x:Int) {
    print("allen1: \(x)")
}
func allen2(y:Int) {
    print("allen2: \(y)")
}
func allen3(z:Int) {
    print("allen3: \(z)")
}

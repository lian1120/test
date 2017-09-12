//
//  ftest1.swift
//  myfunction
//
//  Created by 江禮安 on 2017/9/12.
//  Copyright © 2017年 江禮安. All rights reserved.
//

import Foundation

func ftest1() {
    func1()
    print(type(of:func1))
    func2()
    print(type(of:func2))
    func3(x: 6)
    print(type(of:func3))
    func4(x:9, y:7.00)
    print(type(of:func4))
    func5(x:6)
    func5(y:87)
    func5(1)
    func5()
    //func5(z:Int = 100)
    
    var xx = 12
    func5(x: &xx)
    print(xx)
    
    
}

func func5(x:inout Int) {
    x = 300 //inout 記憶體地址，參數可被改變
}

func func5(z:Int = 100){
    //參數有預設值
    print("z : \(z)")
}
func func5(_ x:Int) {
    //參數的常數，可以忽略不寫，呼叫時就寫func5(1)
    print("x2: \(x)")
}

func func5(y:Int) {
    print("y : \(y)")
}

func func5(x:Int) {
    var ab = x
    ab = 4321
    print("x: \(ab)")
}

// --------

func func4(x:Int, y:Double) ->Bool {
    print("func4 : \(x) , \(y)")
    return true
}
func func3(x:Int) {
    print("func3 : \(x)")
}
func func2() -> Void{
    print("func2")
}

func func1() {
    print("func1")
}




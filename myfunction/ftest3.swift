//
//  ftest3.swift
//  myfunction
//
//  Created by 江禮安 on 2017/9/12.
//  Copyright © 2017年 江禮安. All rights reserved.
//

import Foundation

//closure閉包
func ftest3(){
    var a1 = [1,53,42,67,55,89,90,38]
    print("1first : \(a1)")
    
    //array sort
    a1.sort()
    print("2second : \(a1)")
    
    var a2 = [1,53,42,67,25,89,90,38]
    a2.sort(by: myfunc1)
    print("3third : \(a2)")
    
    a2.sort(by: myfunc2)
    print("4four : \(a2)")
    
    //以下才是 Closure
    var a3 = [1,53,42,67,25,89,90,38]
    a3.sort(by: { (x:Int,y:Int) ->Bool in
        return x < y
        })
    print("5five : \(a3)")
    
    //精簡化
    var a4 = [1,53,42,67,25,89,90,38]
    a4.sort(by: { x,y in
        //print()
        return x < y
    })
    print("6six : \(a4)")
    
    //精簡化2
    var a5 = [0,53,42,67,25,89,90,38]
    a5.sort(by: { x, y in x < y})
    print("7seven : \(a5)")
    
    //Unix =>變數九個之內可以用 $0, $1, $2, ...$9代表變數名稱
    //精簡化3
    var a6 = [7,53,42,67,25,89,90,38]
    a6.sort(by: {$0 < $1})
    print("8eight : \(a6)")
    
    //精簡化4
    var a7 = [6,53,42,67,25,89,90,38]
    a7.sort(by: <)
    print("9nine : \(a7)")
    
    
    var a8 = [6,53,42,131,268,777,67,25,89,90,38]
    a8.sort(by: {(x:Int,y:Int)->Bool in
        var ret = false
        if x >= 100 && y >= 100 {
            ret = x < y
        }else if x >= 100 && y < 100{
            ret = true
        }else if x < 100 && y >= 100 {
            ret = false
        }else{
            ret = x < y
        }
        return ret
    })
    print("10ten : \(a8)")
    
    //百位數字在前面，十位數字在後面
    var a9 = [6,53,42,131,268,777,67,25,89,90,38]
    a9.sort(by: {(x:Int,y:Int)->Bool in
        var ret = false
        if x >= 100 && y >= 100 {
            ret = x > y
        }else if x >= 100 && y < 100{
            ret = true
        }else if x < 100 && y >= 100 {
            ret = false
        }else{
            ret = x < y
        }
        return ret
    })
    print("11eleven : \(a9)")
    
    print("----------")
    
    //尾隨閉包
    myfunc3(x: 5, y: {(z) in
        return "OK1, \(z)"
    })
    
    
    myfunc3(x: 5){
        (z) in
        return "ok2, \(z)"}
    
    myfunc3(x: 5){
        return "ok3, \($0)"}
    
    myfunc3(x: 5){
        "ok4, \($0)"
    }
    
    //巢狀function
    myfunc4()
    
    
}

func myfunc41(){
    print("this is myfunc41.")
}

//巢狀function。內部function，可以使用外部function的變數
func myfunc4() {
    var a = 10
    
    print("before : a = \(a)")
    func myfunc41(){
        a += 3
        print("myfinc41")
    }
    myfunc41()
    myfunc41()
    print("after : a = \(a)")
}



//尾隨閉包
func myfunc3(x:Int, y:(Int)->String){
    print(y(x+3))
}

func myfunc1(x:Int,y:Int) ->Bool {
    return x < y
}

func myfunc2(x:Int,y:Int) ->Bool {
    return x > y
}





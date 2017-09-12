//
//  ftest2.swift
//  myfunctest
//
//  Created by user22 on 2017/9/12.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

func ftest2(){
    var brad4:(_:Int)->Void = brad3
    brad4(2)
    brad4 = brad2
    brad4(2)
    brad4 = brad1
    brad4(2)
    
    var op:(_:Int, _:Int)->Int = add
    op = div
    print(op(10,3))
    
    print(brad5(what: mult, x: 10, y: 4))
    
    let letters = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
    let alpha:Character = "Z"
    let n12 = indexOf(source:letters, find:alpha) + 10
    let n1 = n12 / 10
    let n2 = n12 % 10
    print("\(n1) : \(n2)")
    
    let dic:[String:Int] = ["A":10,"B":11,"C":12,"D":13]
    print(dic["A"]!)
    
    let v1 = indexOf(source:letters, findlast:"1")
    // 3
    print(v1)
    
}
func indexOf(source:String, findlast:Character) -> Int {
//    var ary:[Character] = Array()
//    for c in source.characters {
//        ary += [c]
//    }
    //print(ary)
    
    let cs = Array(source.characters)
    print(cs)

//    for i in stride(from: 1, to: 10, by: 3){
//        print(i)
//    }
//    
//    for i in stride(from: 1, through: 10, by: 3){
//        print(i)
//    }

    var ret = -1, ii = 1
    for i in stride(from: cs.count-1, through: 0, by: -1){
        if cs[i] == findlast {
            ret = ii
            break
        }
        ii += 1
    }
    
    return ret
}

func indexOf(source:String, find:Character) -> Int {
    var ret = -1, i = 0
    for c in source.characters {
        if c == find {
            ret = i
            break
        }
        i += 1
    }
    return ret
}

func brad5(what:(Int,Int)->Int, x:Int, y:Int)->String{
    print("start....")
    let s1 = what(x,y)
    return "result = \(s1)"
}

func add(x:Int, y:Int) -> Int {
    let result = x + y
    return result
}
func sub(x:Int, y:Int) -> Int {
    let result = x - y
    return result
}
func mult(x:Int, y:Int) -> Int {
    let result = x * y
    return result
}
func div(x:Int, y:Int) -> Int {
    let result = x / y
    return result
}

func brad1(x:Int){
    print("brad1:\(x)")
}
func brad2(y:Int){
    print("brad2:\(y)")
}
func brad3(z:Int){
    print("brad3:\(z)")
}

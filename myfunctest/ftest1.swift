//
//  ftest1.swift
//  myfunctest
//
//  Created by user22 on 2017/9/12.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation

func ftest1(){
    func1()
    print(type(of:func1))
    func2()
    print(type(of:func2))
    func3(x: 1)
    print(type(of:func3))
    func4(x: 1, y:2.0)
    print(type(of:func4))
    
    func5(x: 1)
    func5(y: 2)
    func5(3)
    func5()
    func5(z:200)
    var xx = 12
    func5(x: &xx)
    print(xx)
}

func func5(x:Int) {
    print("x1:\(x)")
}
func func5(y:Int) {
    print("y:\(y)")
}
func func5(_ x:Int) {
    print("x2:\(x)")
}
func func5(z:Int = 100){
    print("z:\(z)")
}
func func5(x:inout Int){
    x = 300
}

func func4(x:Int, y:Double) -> Bool{
    print("func4")
    return true
}


func func3(x:Int){
    print("func3")
}

func func2() -> Void {
    print("func2")
}

func func1(){
    print("func1")
}

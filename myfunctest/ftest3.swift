//
//  ftest3.swift
//  myfunctest
//
//  Created by user22 on 2017/9/12.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Foundation


// Closure 閉包
func ftest3(){
    var a1 = [1,4,12,77,34,23,53,22,75]
    
    a1.sort()
    print(a1)
    
    var a2 = [1,4,12,77,34,23,53,22,75]
    a2.sort(by: myfunc1)
    print(a2)
    
    // 以下才是 Closure
    var a3 = [1,4,12,77,34,23,53,22,75]
    a3.sort(by: {(x:Int,y:Int)->Bool in
        return x < y
    })
    print(a3)
    
    var a4 = [1,4,12,77,34,23,53,22,75]
    a4.sort(by: {x,y in
        //print("Brad")
        return x < y
    })
    print(a4)
    // -------------------------
    var a5 = [1,4,12,77,34,23,53,22,75]
    a5.sort(by: {x,y in x < y })
    print(a5)
    
    // Unix => $0 $1, $2, $3, ....$9
    var a6 = [1,4,12,77,34,23,53,22,75]
    a6.sort(by: { $0 < $1 })
    print(a6)
    
    var a7 = [1,4,12,77,34,23,53,22,75]
    a7.sort(by: < )
    print(a7)

    var a8 = [1,4,101,12,77,100,34,23,102,53,22,75]
    a8.sort(by: {(x:Int,y:Int)->Bool in
        var ret = false
        if x >= 100 && y >= 100 {
            ret = x < y
        }else if x >= 100 && y < 100 {
            ret = true
        }else if x < 100 && y >= 100 {
            ret = false
        }else {
            ret = x < y
        }
        return ret
    })
    print(a8)
    
    myfunc3(x: 3, y: {(z) in
        return "OK, \(z)"
    })
    
    myfunc3(x: 3){
        (z) in
        return "OK1, \(z)"
    }

    myfunc3(x: 3){
        return "OK2, \($0)"
    }
    
    myfunc3(x: 3){
        "OK3, \($0)"
    }

    myfunc4()
    
}
// 巢狀
func myfunc4(){
    var a = 10
    //myfunc41()
    print("before: a = \(a)")
    func myfunc41(){
        a += 1
        print("myfunc41")
    }
    myfunc41()
    myfunc41()
    print("after: a = \(a)")
    
}
func myfunc41(){
    print("I am func41")
}

func myfunc5(){
    myfunc41()
}

// 尾隨
func myfunc3(x:Int, y:(Int)->String) {
    print(y(x+3))
}

func myfunc1(x:Int, y:Int) -> Bool {
    return x < y
}
func myfunc2(x:Int, y:Int) -> Bool {
    return x > y
}



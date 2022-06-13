//
//  StateObjectClass.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import Foundation

//首先定义了一个类对象模型StateObjectClass，遵循ObservableObject
class StateObjectClass: ObservableObject{
    let type:String
    let id:Int
    @Published var count = 0  
    
    init(type:String){
        self.type = type
        self.id = Int.random(in: 0...1000)
        print("type:\(type) id:\(id) init")
    }
    
    deinit {
        print("type:\(type) id:\(id) deinit")
    }
}

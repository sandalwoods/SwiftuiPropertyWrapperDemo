//
//  CountViewState.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import SwiftUI

//使用不同的propertywrapper修饰相同的StateObjectClass对象
//1，使用StateObject
struct CountViewState:View{
    @StateObject var state = StateObjectClass(type:"StateObject")
    
    init() {
        print("init CountViewState")
    }
    
    var body: some View{
        VStack{
            Text("@StateObject count :\(state.count)")
            Button("+1"){
                state.count += 1
            }
        }
    }
}

struct CountViewState_Previews: PreviewProvider {
    static var previews: some View {
        CountViewState()
    }
}

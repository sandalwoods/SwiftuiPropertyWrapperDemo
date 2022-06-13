//
//  CountViewObserved.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import SwiftUI

//2，使用ObservedObject
struct CountViewObserved:View{
    @ObservedObject var state = StateObjectClass(type:"Observed")
    
    init() {
        print("init CountViewObserved")
    }
    
    var body: some View{
        VStack{
            Text("@Observed count :\(state.count)")
            Button("+1"){
                state.count += 1
            }
        }
    }
}

struct CountViewObserved_Previews: PreviewProvider {
    static var previews: some View {
        CountViewObserved()
    }
}

//
//  Test1.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import SwiftUI

struct Test1: View {
    @State var count = 0
    
    var body: some View {
        VStack{
            Text("刷新CounterView计数 :\(count)")
            Button("刷新"){
                count += 1
            }
            
            CountViewState()
                .padding()
            
            CountViewObserved()
                .padding()
    
        }
    }
}

struct Test1_Previews: PreviewProvider {
    static var previews: some View {
        Test1()
    }
}

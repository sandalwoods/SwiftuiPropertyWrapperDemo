//
//  Test2.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import SwiftUI

struct Test2: View {
    @State var count = 0
    
    var body: some View {
//        Text("刷新CounterView计数 :\(count)")
//        Button("刷新"){
//            count += 1
//        }
        NavigationView{
            List{
                NavigationLink("@StateObject", destination: CountViewState())
                NavigationLink("@ObservedObject", destination: CountViewObserved())
            }
        }
    }
}

struct Test2_Previews: PreviewProvider {
    static var previews: some View {
        Test2()
    }
}

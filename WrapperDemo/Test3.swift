//
//  Test3.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import SwiftUI

struct Test3: View {
    @State private var showStateObjectSheet = false
    @State private var showObservedObjectSheet = false
    
    var body: some View {
        List{
            Button("Show StateObject Sheet"){
                showStateObjectSheet.toggle()
            }
            .sheet(isPresented: $showStateObjectSheet) {
                CountViewState()
            }
            
            Button("Show ObservedObject Sheet"){
                showObservedObjectSheet.toggle()
            }
            .sheet(isPresented: $showObservedObjectSheet) {
                CountViewObserved()
            }
        }
    }
}

struct Test3_Previews: PreviewProvider {
    static var previews: some View {
        Test3()
    }
}

//
//  Counters.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import SwiftUI

//Counters是父视图，包含两个StateObject，counter1和counter2，count的初始值都是0
struct Counters: View {
    @State var useFirstCounter = true
    @StateObject var counter1 = Counter(0)
    @StateObject var counter2 = Counter(0)

    var body: some View {
        VStack {
            Counter1(counter: useFirstCounter ? counter1 : counter2)
            Counter2(counter: useFirstCounter ? counter1 : counter2)
            Button("Switch Counter") {
                useFirstCounter.toggle()
            }
        }
    }
}

//子视图Counter1，从父ViewCounters接受参数传入，其内部counter使用@ObservedObject
struct Counter1: View {
    @ObservedObject var counter: Counter

    init(counter: Counter) {
        self.counter = counter
    }

    var body: some View {
        HStack {
            Button { counter.decrement() } label: { Image(systemName: "minus.circle") }
            Text("\(counter.count)")
            Button { counter.increment() } label: { Image(systemName: "plus.circle") }
        }
    }
}

//子视图Counter2，从父ViewCounters接受参数传入，其内部counter使用@StateObject，意味着在以后的视图更新中，它会每次都使用相同的实例，
//甚至如果父视图随后传入一个不同的counter，也不会变化。
struct Counter2: View {
    @StateObject var counter: Counter

    init(counter: Counter) {
        self._counter = StateObject(wrappedValue: counter)
    }

    var body: some View {
        HStack {
            Button { counter.decrement() } label: { Image(systemName: "minus.circle") }
            Text("\(counter.count)")
            Button { counter.increment() } label: { Image(systemName: "plus.circle") }
        }
    }
}

//
//  Counter.swift
//  WrapperDemo
//
//  Created by kevin on 2022/6/12.
//

import Foundation

//Counter对象Model
class Counter: ObservableObject {
    @Published var count: Int

    init(_ initialCount: Int) {
        self.count = initialCount
    }

    func increment() {
        count += 1
    }

    func decrement() {
        count -= 1
    }
}

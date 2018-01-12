//
//  main.swift
//  LazyPerfCheck
//
//  Created by Colin Rofls on 2018-01-10.
//  Copyright © 2018 Colin Rofls. All rights reserved.
//

import Foundation

func main() {
    let buf = RotatingBuffer()
    for i in 0..<500 {
        print("insert \(i)")
        buf.add("I'm surprisingly expensive")
    }
}

class RotatingBuffer {
    let BUF_SIZE = 100_000
    lazy var buf: [String] = Array(repeating: "I'll fix it later", count: BUF_SIZE)
    var entryCount = 0

    func add(_ name: String) {
        let i = entryCount % BUF_SIZE
        buf[i] = name
        entryCount += 1
    }
}


main()

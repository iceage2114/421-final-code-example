//
//  421 hw.swift
//  testapp2
//
//  Created by Jonathan Zhang on 4/28/24.
//

import Foundation

class NodeExample {
    var value: Int
    var left: NodeExample? = nil
    var right: NodeExample? = nil
    
    init(value: Int) {
        self.value = value
    }
}

func treeSumExample(_ root: NodeExample?) -> Int {
    if root == nil {
        return 0
    }
    var leftNode: NodeExample = NodeExample(value: 0)
    var rightNode: NodeExample = NodeExample(value: 0)
    
    if let unwrap = root?.left {
        leftNode = unwrap
    }
    if let unwrap = root?.right {
        rightNode = unwrap
    }
    
    return root!.value + treeSum(leftNode) + treeSum(rightNode)
}

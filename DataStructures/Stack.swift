//
//  Stack.swift
//  DataStructures
//
//  Created by Artem Shyianov on 1/30/17.
//  Copyright © 2017 Artem Shyianov. All rights reserved.
//

import Foundation

protocol StackProtocol {
    associatedtype IDType
    func push(element : IDType)
    func popElement() -> IDType?
    var count : Int { get }
}

protocol NodeProtocol {
    associatedtype IDType
    var element : IDType { get }
    var nextNode : Self? { get }
    init(element : IDType, before: Self?)
}

final class IDNode<IDType>: NodeProtocol {
    let element: IDType
    let nextNode: IDNode?
    
    init(element : IDType, before: IDNode?) {
        self.element = element
        self.nextNode = before
    }
}

class IDStack<Node : NodeProtocol>: StackProtocol
{
    typealias NodeType = Node
    private var stackHead: Node?
    
    func push(element: Node.IDType) {
        let newNode = Node(element: element, before: stackHead)
        stackHead = newNode
    }
    
    func popElement() -> Node.IDType? {
        if let firstNode = stackHead {
            let element = firstNode.element
            stackHead = firstNode.nextNode
            return element
        } else {
            return nil
        }
    }
    
    var count : Int {
        var numItems = 0
        var currentNode = self.stackHead
        while let node = currentNode {
            numItems += 1
            currentNode = node.nextNode
        }
        return numItems
    }
}

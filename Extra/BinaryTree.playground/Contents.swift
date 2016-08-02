class Node: AnyObject {
    
    var value: Int
    var left: Node?
    var right: Node?
    
    init (value: Int) {
        self.value = value
        self.left = nil
        self.right = nil
    }
    
    func visit () {
        print("Node: \(self.value)")
    }
    
}

class Tree: AnyObject {
    
    var root: Node?
    init (root: Node) {
        self.root = root
    }
    
    func insert(newNode: Node) {
        if root == nil {
            root = newNode
        } else {
            insert(newNode, root: root!)
        }
    }
    
    private func insert(newNode: Node, root: Node) {
        if newNode.value < root.value {
            if root.left == nil {
                root.left = newNode
            } else {
                insert(newNode, root: (root.left)!)
            }
        } else if newNode.value > root.value {
            if root.right == nil {
                root.right = newNode
            } else {
                insert(newNode, root: (root.right)!)
            }
        }
    }
    
    func inOrderTraversal(node: Node?) {
        if node != nil {
            inOrderTraversal(node?.left)
            visit(node!)
            inOrderTraversal(node?.right)
        }
    }
    
    func preOrderTraversal(node: Node?) {
        if node != nil {
            visit(node!)
            preOrderTraversal(node?.left)
            preOrderTraversal(node?.right)
        }
    }
    
    func postOrderTraversal(node: Node?) {
        if node != nil {
            postOrderTraversal(node?.left)
            postOrderTraversal(node?.right)
            visit(node!)
        }
    }
    
    func visit(node: Node) {
        node.visit()
    }
    
    
}

var tree: Tree
var node = Node(value: 4)
tree = Tree(root: node)
tree.insert(Node(value:1))
tree.insert(Node(value:2))
tree.insert(Node(value:3))
tree.insert(Node(value:5))
tree.insert(Node(value:6))
tree.insert(Node(value:7))

print("InOrderTraversal")
tree.inOrderTraversal(tree.root!)
print("PreOrderTraversal")
tree.preOrderTraversal(tree.root!)
print("PostOrderTraversal")
tree.postOrderTraversal(tree.root!)



// 2.1 Write code to remove duplicates from an 
// unsorted linked list
// FOLLOW UP: How would you solve this problem
// if a temporary buffer is not allowed?

class Node: AnyObject {
    var data: Int
    var next: Node?
    init (data: Int) {
        self.data = data
        self.next = nil
    }
    func printNode () {
        print("Data: \(self.data)")
    }
}

class LinkedList: AnyObject {
    var head: Node?
    init () {
        head = nil
    }
    init (node: Node?) {
        if node != nil {
            head = node
        }
    }
    func insert(node: Node?) {
        if head != nil {
            var next = head?.next
            if next != nil {
                while next?.next != nil {
                    next = next?.next
                }
                next?.next = node
            } else {
                head?.next = node
            }
        } else {
            head = node
        }
    }
    func printList() {
        if head == nil {
            print("Empty")
        } else {
            head?.printNode()
            var n = head?.next
            while n != nil {
                n?.printNode()
                n = n?.next
            }
        }
    }
    func removeDuplicates() {
        var occurrences = [Int: Bool]()
        var previous: Node
        if head == nil {
            return
        } else {
            var next = head?.next
            previous = head!
            while next != nil {
                if occurrences[next!.data] == nil {
                    occurrences[next!.data] = true
                    previous = next!
                } else {
                    previous.next = next?.next
                }
                next = next?.next
            }
        }
    }
}

var head: Node
head = Node(data: 0)

var list: LinkedList
list = LinkedList()
list.insert(head)

for i in 1..<10 {
    var tempNode = Node(data: i)
    list.insert(tempNode)
}
for i in (5..<15).reverse() {
    var tempNode = Node(data: i)
    list.insert(tempNode)
}

list.removeDuplicates()
list.printList()


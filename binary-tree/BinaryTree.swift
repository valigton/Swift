enum BinaryTree<T: Comparable> {
  case empty
  indirect case node(BinaryTree, T, BinaryTree)
  
  mutating func naiveInsert(newValue: T) {
    guard case .node(var left, let value, var right) = self else {
      self = .node(.empty, newValue, .empty)
      return 
    }
    if newValue < value {
      left.naiveInsert(newValue: newValue)
    } else {
      right.naiveInsert(newValue: newValue)
    }
  }

  mutating func insert(newValue: T) {
    self = newTreeWithInsertedValue(newValue: newValue)
  }

  private func newTreeWithInsertedValue(newValue: T) -> BinaryTree {
    switch self {
    case .empty:
      return .node(.empty, newValue, .empty)

    case let .node(left, value, right):
      if newValue < value {
        return .node(left.newTreeWithInsertedValue(newValue: newValue), value, right)
      } else {
        return .node(left, value, right.newTreeWithInsertedValue(newValue: newValue))
      }
    }
  }
  /*var count: Int {
    switch self {
    case let .node(left, _, right):
      return left.count + 1 + right.count
    case .empty:
      return 0
    }
  }*/

}

extension BinaryTree: CustomStringConvertible {
  var description: String {
    switch self {
    case let .node(left, value, right):
      return "value: \(value), left = [" + left.description + "], right = [" + right.description + "]"
    case .empty:
      return ""
    }
  }
}

var binaryTree: BinaryTree<Int> = .empty
binaryTree.insert(newValue: 5) // binaryTree now has a node value with 5
binaryTree.insert(newValue: 7) 
binaryTree.insert(newValue: 9) 
binaryTree.insert(newValue: 4) 
binaryTree.insert(newValue: 27) 
binaryTree.insert(newValue: 8) 

print(binaryTree)
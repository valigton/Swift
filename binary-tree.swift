class Tree {
  var id: Int?
  var leftChil: Int?
  var rightChild: Int?

  
  init(id: Tree) {
    self.id = id
  }
  
  func addToTheTree(tree: Tree,id: Int) -> Int {
    if(tree.id) {
      if(id > tree.id) {
        addToTheTree(Tree, id)
      } else {
        addToTheTree(Tree, id)
      }
    } else {
      tree.id = id;
      tree.right = Tree;
      tree.left = Tree;
    }
  }
}

var newTree = new Tree()

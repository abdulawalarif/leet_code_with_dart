bool isSymmetric(Node root){
  return isMirror(root, root);
}


bool isMirror(Node t1, Node t2){
  if(t1 == null && t2 == null) return true;
  if(t1 == null || t2 == null) return false;


  return (t1.data == t2.data)

}


// A binary tree node has data, pointer to left child
// and a pointer to right child
class Node {
  late int data;
  Node? left, right;

  Node(int data) {
    this.data = data;
    left = right = null;
  }
}

// Utility function to create a new tree node
Node? newNode(int data) {
  Node temp = Node(data);
  return temp;
}

// Driver code
void main() {
  Node? root = newNode(1);
  root!.left = newNode(2);
  root.right = newNode(3);
  root.left!.left = newNode(4);
  root.left!.right = newNode(5);

  // Function call
  print("Inorder traversal of binary tree is");

}

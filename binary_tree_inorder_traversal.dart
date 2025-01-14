import 'sorted_array_to_bst.dart';

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> list = [];
    return inHelper(root, list);
  }

  List<int> inHelper(TreeNode? root, List<int> list) {
    if (root == null) return list;

    inHelper(root.left, list);
    list.add(root.val);
    inHelper(root.right, list);
    return list;
  }
}



// problem: https://leetcode.com/problems/binary-tree-inorder-traversal/
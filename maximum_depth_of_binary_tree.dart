import 'dart:math';
import 'sorted_array_to_bst.dart';

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) {
      return 0; // return 0 for null node
    }

    int left_depth = maxDepth(root.left);
    int right_depth = maxDepth(root.right);
    return max(left_depth, right_depth) +
        1; // return depth of the subtree rooted at root
  }
}


// problem: https://leetcode.com/problems/maximum-depth-of-binary-tree/
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}


class Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    if (nums.isEmpty) {
      return null;
    }

    return createTree(nums, 0, nums.length - 1);
  }

  TreeNode? createTree(List<int> someList, int start, int end) {
    if (start > end) {
      return null;
    }

    int mid = (start + end) ~/ 2;

    TreeNode node = TreeNode(someList[mid]);
    node.left = createTree(someList, start, mid - 1);
    node.right = createTree(someList, mid + 1, end);

    return node;
  }
}


// problem: https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/


 
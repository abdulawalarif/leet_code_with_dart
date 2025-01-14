class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
       int k = nums1.length-1;
    for (int i = m - 1, j = n - 1; j >= 0; --k) {
      nums1[k] = (i >= 0 && nums1[i] > nums2[j]) ? nums1[i--] : nums2[j--];
    }
  }
}


// problem: https://leetcode.com/problems/merge-sorted-array/
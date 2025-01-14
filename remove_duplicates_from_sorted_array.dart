class Solution {
  int removeDuplicates(List<int> nums) {
     int count = 0;
  
  for(int i =0; i<nums.length; i++){
    if(i<nums.length-1 && nums[i]== nums[i+1]){
      continue;
    }
    nums[count]=nums[i];
    count++;
  }
  return count;
  }
}

//problme: https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/

 
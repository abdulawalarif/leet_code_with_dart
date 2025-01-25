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


 //Another way we can approach this problem. 

 class Solution2 {
  int removeDuplicates(List<int> nums) {
    
    List<int> uniqueNums = nums.toSet().toList();
    for (int i = 0; i < uniqueNums.length; i++) {
      nums[i] = uniqueNums[i];
    }
    return uniqueNums.length;
  }
}


//problme: https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/

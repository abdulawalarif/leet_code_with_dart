public class Solution {
    public int[] twoSum(int nums[],int target) {
       int length = nums.length;
       Map<Integer, Integer> storingInfo = new HashMap<>();
     
       for(int i =0; i<length; i++){
               int comparison = target - nums[i];
               if(storingInfo.containsKey(comparison)){
                   return new int [] {storingInfo.get(comparison),i};
               }
               storingInfo.put(nums[i], i);
    
       }
       throw new IllegalArgumentException("no match found");
  }
  }

// problem:  https://leetcode.com/problems/two-sum/
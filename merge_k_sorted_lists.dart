import 'merging_sorted_list_node.dart';

class Solution {
  ListNode? mergeKLists(List<ListNode?> lists) {
    ListNode dummy = ListNode(0);
    ListNode curr = dummy;

    List<ListNode> minHeap = [];

    for (final list in lists) {
      if (list != null) {
        minHeap.add(list);
      }
    }

    minHeap.sort((a, b) => a.val.compareTo(b.val));

    while (minHeap.isNotEmpty) {
      final minNode = minHeap.removeAt(0);

      if (minNode.next != null) {
        minHeap.add(minNode.next!);
        minHeap.sort((a, b) => a.val.compareTo(b.val));
      }

      curr.next = minNode;
      curr = curr.next!;
    }

    return dummy.next;
  }
}

//problme: https://leetcode.com/problems/merge-k-sorted-lists/description/

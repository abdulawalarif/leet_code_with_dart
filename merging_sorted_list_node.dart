void main() {
  print("SOmethig");
  // Example usage :

  ListNode? list1 =
      ListNode(1, ListNode(4, ListNode(5, ListNode(7, ListNode(100)))));
  ListNode? list2 =
      ListNode(0, ListNode(8, ListNode(50, ListNode(70, ListNode(100)))));
  ListNode? list3 =
      ListNode(10, ListNode(40, ListNode(50, ListNode(70, ListNode(100)))));

  ListNode? list4 = ListNode(
      100, ListNode(400, ListNode(500, ListNode(700, ListNode(1000)))));

  List<ListNode?> lists = [list1, list2, list3, list4];

  Solution solution = Solution();
  ListNode? mergedList = solution.mergingSortedList(lists);

  while (mergedList != null) {
    print(mergedList.val);
    mergedList = mergedList.next;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergingSortedList(List<ListNode?> lists) {
    ListNode dummy = ListNode(0);
    ListNode curr = dummy;

    // storing data into heap

    List<ListNode> headData = [];

    for (final list in lists) {
      if (list != null) {
        headData.add(list);
      }
    }

    headData.sort((a, b) => a.val.compareTo(b.val));

    while (headData.isNotEmpty) {
      final currentSmallVal = headData.removeAt(0);

      if (currentSmallVal.next != null) {
        headData.add(currentSmallVal.next!);

        headData.sort((a, b) => a.val.compareTo(b.val));
      }

      curr.next = currentSmallVal;
      curr = curr.next!;
    }
    return dummy.next;
  }
}

void main() {}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    while (head != null) {
      ListNode? next = head.next;
      head.next = prev;
      prev = head;
      head = next;
    }
    return prev;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

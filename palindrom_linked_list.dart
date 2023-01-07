void main() {
  print(Solution().isPalindrome(ListNode(1, ListNode(2, ListNode(2, ListNode(1))))));
}

class Solution {
  bool isPalindrome(ListNode? head) {
    ListNode? slow = head;
    ListNode? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      print("slow:$slow");
      fast = fast.next?.next;
      print("fast:$fast");
    }

    slow = reverseList(slow);
    fast = head;

    while (slow != null) {
      if (slow.val != fast?.val) {
        return false;
      }
      slow = slow.next;
      fast = fast?.next;
    }

    return true;
  }

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
  @override
  String toString() {
    return "$val => $next";
  }
}

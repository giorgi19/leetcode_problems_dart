class Solution {
  List<int> preorderTraversal(Node? root) {
    List<Node> stack = [];
    List<int> outputArr = [];

    if (root == null) {
      return outputArr;
    }
    stack.add(root);
    while (stack.isNotEmpty) {
      Node node = stack.removeLast();
      outputArr.add(node.val);
      for (var data in node.children.reversed) {
        stack.add(data);
      }
    }
    return outputArr;
  }
}

class Node {
  int val;
  List<Node> children;
  Node({
    required this.val,
    required this.children,
  });
}

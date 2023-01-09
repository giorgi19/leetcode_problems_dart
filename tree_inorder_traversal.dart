main() {}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<TreeNode> stack = [];
    List<int> output_arr = [];
    if (root == null) return output_arr;
    TreeNode? current = root;
    while (current != null || stack.isNotEmpty) {
      while (current != null) {
        stack.add(current);
        current = current.left;
      }
      current = stack.removeLast();
      output_arr.add(current.val);
      current = current.right;
    }
    return output_arr;
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

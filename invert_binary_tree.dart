class Solution {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) return null;
    TreeNode? left = invertTree(root.left);
    TreeNode? right = invertTree(root.right);

    root.left = right;
    root.right = left;

    return root;
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

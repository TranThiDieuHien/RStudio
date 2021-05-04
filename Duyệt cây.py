# -*- coding: utf-8 -*-
"""
Created on Tue May  4 09:37:32 2021

@author: tran thi dieu hien
"""

def _add(node, v):
    new = [v, [], []]
    if node:
        left, right = node[1:]
        if not left:
            left.extend(new)
        elif not right:
            right.extend(new)
        else:
            _add(left, v)
    else:
        node.extend(new)

def binary_tree(s):
    root = []
    for e in s:
        _add(root, e)
    return root

def traverse(n, order):
    if n:
        v = n[0]
        if order == 'pre':
            yield v
        for left in traverse(n[1], order):
            yield left
        if order == 'in':
            yield v
        for right in traverse(n[2], order):
            yield right
        if order == 'post':
            yield v
            
tree = binary_tree('A B C D E'.split())
print("Cây:", tree)
print("duyệt theo tiền thứ tự:",list(traverse(tree, 'pre')),"\n",
      "duyệt theo trung thứ tự:", list(traverse(tree, 'in')),"\n", 
      "duyệt theo hậu thứ tự:", list(traverse(tree, 'post')))
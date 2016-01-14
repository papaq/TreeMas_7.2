//
// Created by bro on 1/14/16.
//

#include "SearchTree.h"

int SearchTree::recursiveSearchInChildren(ChildTree<int> *child, int val) {
    int counter = 0;
    if (!child)
        return 0;

    counter += SearchTree::recursiveSearchInChildren(goDown(child), val);
    counter += SearchTree::recursiveSearchInChildren(goRight(child), val);

    if (child->getVal() == val)
        counter++;

    return counter;
}




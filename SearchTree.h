//
// Created by bro on 1/14/16.
//

#include "Root.h"
#include <string>
#include <string.h>

#ifndef TREEMAS_7_2_SEARCHTREE_H
#define TREEMAS_7_2_SEARCHTREE_H

using std::string;
class SearchTree {

public:

    /*    I N T    */

    static int recursiveSearchInChildren(ChildTree <int> *child, int val);

    static ChildTree<int> *goDown(Root<int> *root);

    static ChildTree<int> *goDown(ChildTree<int> *root);

    static ChildTree<int> *goRight(ChildTree<int> *child);

    /*    S T R I N G    */

    static int recursiveSearchInChildren(ChildTree <string> *child, string val);

    static ChildTree<string> *goDown(Root<string> *root);

    static ChildTree<string> *goDown(ChildTree<string> *root);

    static ChildTree<string> *goRight(ChildTree<string> *child);
};

inline ChildTree<int> *SearchTree::goDown(ChildTree<int> *root) {
    return root->child;
}

inline ChildTree<int> *SearchTree::goDown(Root<int> *root) {
    return root->child;
}

inline ChildTree<int> *SearchTree::goRight(ChildTree<int> *child) {
    return child->bro;
}

inline int SearchTree::recursiveSearchInChildren(ChildTree<string> *child, string val) {
    int counter = 0;
    if (!child)
        return 0;

    counter += SearchTree::recursiveSearchInChildren(goDown(child), val);
    counter += SearchTree::recursiveSearchInChildren(goRight(child), val);

    if (strcmp(child->getVal().c_str(), val.c_str()))
        counter++;

    return counter;
}


inline ChildTree<string> *SearchTree::goDown(ChildTree<string> *root) {
    return root->child;
}

inline ChildTree<string> *SearchTree::goDown(Root<string> *root) {
    return root->child;
}

inline ChildTree<string> *SearchTree::goRight(ChildTree<string> *child) {
    return child->bro;
}

#endif //TREEMAS_7_2_SEARCHTREE_H

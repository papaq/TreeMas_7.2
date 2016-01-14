//
// Created by solomon on 17.10.15.
//

#ifndef TREEMAS_7_2_TREE_H
#define TREEMAS_7_2_TREE_H

#include <iostream>
#include "CreateTre.h"
#include "SearchTree.h"

template<typename T>
class Tree {
private:
    Root<T> *root = NULL;
    int treepth = 2;

    Root<T> *autoCreateTree(void) {
        Root<T> *root = new Root<T>((T)0);
        //std::cout << root->getVal() << std::endl;
        int nextWidth = 3;

        root->child = CreateTre::recursiveCreateChildren(treepth, nextWidth, (T)0);

        return root;
    };

    ChildTree<T> *navigateToMyChild(ChildTree<T> *child, int childNum) {
        if (!checkIfChild(child) && checkIfPos(childNum))
            return NULL;
        if (!(child = goAllRight(SearchTree::goDown(child), childNum-1)))
            return NULL;
        return child;
    }

    ChildTree<T> *goAllRight(ChildTree<T> *child, int broNum) {
        for (int i = 0; i < broNum; ++i) {
            if (!checkIfBro(child))
                return NULL;
            child = SearchTree::goRight(child);
        }
        return child;
    }

    bool checkIfPos(int val){
        return val > 0;
    }

    bool checkIfBro(ChildTree<T> *child) {
        return child->bro != NULL;
    }

    bool checkIfChild(ChildTree<T> *child) {
        return child->child != NULL;
    }
    
public:
    Root<T> * getRoot(){
        return root;
    }

    Tree() {
        this->root = autoCreateTree();
    };

    Tree(int depth) {
        treepth = depth;
        root = autoCreateTree();
    };

    int searchIntInputNum(Root<T> *root, T val) {
        if (root == NULL)
            return 0;

        ChildTree<T> *tempChild = SearchTree::goDown(root);
        int counter = 0;

        if (root->getVal() == val)
            counter++;

        counter += SearchTree::recursiveSearchInChildren(tempChild, val);

        return counter;
    }

    T getSomeVal(Root<T> *root, int arr[]) {
        if (root && SearchTree::goDown(root) && arr && checkIfPos(arr[0])) {
            int len = (sizeof((arr))/sizeof((arr[0])));
            ChildTree<T> *child = SearchTree::goDown(root);
            if (!(child = goAllRight(child, arr[0]-1)))
                return -1;
            for (int i = 1; i < len; ++i)
                if (!(child = navigateToMyChild(child, arr[i])))
                    return -1;
            return child->getVal();
        }
        return -1;
    }
};

#endif //TREEMAS_7_2_TREE_H

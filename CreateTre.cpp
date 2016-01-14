//
// Created by bro on 1/14/16.
//

#include "CreateTre.h"
ChildTree<int> *CreateTre::recursiveCreateChildren(int depth, int width, int r) {
    if (depth > 0) {
        ChildTree<int> *child = new ChildTree<int>((int)0); // ((100-depth)*10 + (3-width)); // (2); // rand()%100
        //std::cout << child->getVal() << std::endl;
        int nextWidth = 3; // rand()%4+1

        child->child = recursiveCreateChildren(depth - 1, nextWidth, 1);

        if (width > 1) {
            child->bro = recursiveCreateChildren(depth, width - 1, 1);
        }

        return child;
    }
    return NULL;
}

ChildTree<string> *CreateTre::recursiveCreateChildren(int depth, int width, string r) {
    if (depth > 0) {
        ChildTree<string> *child = new ChildTree<string>((string)0); // ((100-depth)*10 + (3-width)); // (2); // rand()%100
        //std::cout << child->getVal() << std::endl;
        int nextWidth = 3; // rand()%4+1

        child->child = recursiveCreateChildren(depth - 1, nextWidth, "");

        if (width > 1) {
            child->bro = recursiveCreateChildren(depth, width - 1, "");
        }

        return child;
    }
    return NULL;
}
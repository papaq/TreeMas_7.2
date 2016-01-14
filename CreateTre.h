//
// Created by bro on 1/14/16.
//

#ifndef TREEMAS_7_2_CREATETRE_H
#define TREEMAS_7_2_CREATETRE_H

#include <list>
#include "ChildTree.h"
#include <string>

using std::string;
class CreateTre {
public:
    static ChildTree<int> *recursiveCreateChildren(int depth, int width, int r);

    static ChildTree<string> *recursiveCreateChildren(int depth, int width, string r);
};


#endif //TREEMAS_7_2_CREATETRE_H

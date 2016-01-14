//
// Created by bro on 1/10/16.
//

#ifndef TREEMAS_7_2_ROOT_H
#define TREEMAS_7_2_ROOT_H

#include "ChildTree.h"

template <typename valT>
class Root
{
private:
    valT val;
public:
    ChildTree<valT> * child = NULL;

    Root(valT val)
    {
        this->val = val;
    }

    ~Root()
    {
        delete val;
        delete this->child;
    }

    valT getVal()
    {
        return this->val;
    }
};

#endif //TREEMAS_7_2_ROOT_H

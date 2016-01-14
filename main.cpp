#include <iostream>
#include "Tree.h"
#include <ctime>
#include <chrono>
#include <string>
using namespace std;

int main(int argc, char **argv) {
    if (argc != 2)
        return 1;

    srand ((unsigned int) time(NULL));
    cout << endl << "Lab 2!" << endl;

    auto begin = std::chrono::high_resolution_clock::now();

    int depth = std::stoi(argv[1]);
    cout << "depth = " << depth << endl;
    Tree <int> * treeClaI = new Tree<int>(depth);
    //Tree <char> * treeClaS = new Tree<char>(15);

    int searchVal = 0; //990

    cout << searchVal << " : " << treeClaI->searchIntInputNum(treeClaI->getRoot(), searchVal) << endl;
    //cout << searchVal << " : " << treeClaS->searchIntInputNum(treeClaS->getRoot(), (char)searchVal) << endl;

    //int arr[2] = {1,2};
    //cout << treeCla->getSomeVal(treeCla->getRoot(), arr) << endl;

    auto end = chrono::high_resolution_clock::now();
    double time = chrono::duration_cast<std::chrono::nanoseconds>(end-begin).count() / 1000000000.0;
    cout << "Worked for " <<  time << " s" << endl;

    return 0;
}

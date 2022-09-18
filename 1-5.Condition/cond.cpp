#include <stdio.h>
#include <limits.h>
#include <string>
#include <iostream>
#include <cmath>
using namespace std;

//template class basic_string<char>;


int main(int argc, char *argv[]) {
  if (argc <= 1) {
    cout << "引数を指定してください\n";
    return 0;
  }

  int num = atoi(argv[1]);
  bool divflag = false;

  if (num == 0) {
    cout << "引数0は無効です\n";
    return 0;
  }
  if ((num % 3) == 0) {
    cout << "3で割り切れる\n";
    divflag = true;
  }
  if ((num % 7) == 0) {
    cout << "7で割り切れる\n";
    divflag = true;
  }
  if (!divflag) {
    cout << "3でも7でも割り切れない\n";
  }
}


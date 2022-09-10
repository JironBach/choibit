#include <stdio.h>
#include <limits.h>
#include <string>
#include <iostream>
#include <cmath>
using namespace std;

//template class basic_string<char>;


int main() {
  cout << "整数同士の演算\n";
  string powistr = to_string(pow(2, 3));
  cout << powistr;
  cout << "\n";
  cout << "-------\n";

  cout << "小数の演算\n";
  string powfstr = to_string(powf(2.2, 3.3));
  cout << powfstr;
  cout << "\n";
  cout << "-------\n";

}


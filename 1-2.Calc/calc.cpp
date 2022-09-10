#include <stdio.h>
#include <limits.h>
#include <string>
#include <iostream>
using namespace std;

//template class basic_string<char>;


int main() {
  cout << "整数同士の演算\n";
  string addstr = to_string(2 + 7);
  string substr = to_string(2 - 7);
  string mulstr = to_string(2 * 7);
  string divstr = to_string(2 / 7);
  cout << addstr;
  cout << "\n";
  cout << substr;
  cout << "\n";
  cout << mulstr;
  cout << "\n";
  cout << divstr;
  cout << "\n";
  cout << "-------\n";

  cout << "小数の演算\n";
  string addfstr = to_string(2.0 + 7);
  string subfstr = to_string(2.0 - 7);
  string mulfstr = to_string(2.0 * 7);
  string divfstr = to_string(2.0 / 7);
  cout << addfstr;
  cout << "\n";
  cout << subfstr;
  cout << "\n";
  cout << mulfstr;
  cout << "\n";
  cout << divfstr;
  cout << "\n";
  cout << "-------\n";

  cout << "余りの演算\n";
  string restistr = to_string(2 % 7);
  cout << restistr;
  cout << "\n";
  //string restfstr = to_string(2.0 % 7.0);
  //cout << restfstr;
  cout << "\n-------\n";

  cout << "int型の最大値: " << INT_MAX;
  cout << "\n";
  cout << "最大値 + 1: はできないらしい";
  cout << "\n";
  string maxistr = to_string(INT_MAX + 1);
  cout << maxistr;
  cout << "\n-------\n";
      
  cout << "int型の最小値: " << INT_MIN;
  cout << "\n";
  cout << "最小値 - 1: はできないらしい";
  cout << "\n";
  string ministr = to_string(INT_MIN - 1);
  cout << ministr;
  cout << "\n-------\n";

  //この関数は最期に呼ぶこと
  //study_console_ln();
}

/*
void study_console_ln() {
  std::cout << "コンソール出力の最後の'%'の調査";
  std::cout << "-------";
  std::cout << "------- ";
  std::cout << "-------";
  std::cout << "-------\n";
  std::cout << "-------";
  std::cout << null;
}
*/


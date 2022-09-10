public class Cond{
  public static void main(String[] args){
    var num = Integer.parseInt(args[0]);
    var divflag = false;

    if (num == 0) {
      System.out.println("引数0は無効です");
      return;
    }
    if ((num % 3) == 0) {
      System.out.println("3で割り切れる");
      divflag = true;
    }
    if ((num % 7) == 0) {
      System.out.println("7で割り切れる");
      divflag = true;
    }
    if (!divflag) {
      System.out.println("3でも7でも割り切れない");
    }
  }
}


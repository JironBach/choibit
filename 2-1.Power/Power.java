public class Power {
  public static void main(String[] args){
    var i = Integer.parseInt(args[0]);
    var j = Integer.parseInt(args[1]);

    System.out.println(power(i, j));
  }

  public static int power(int x, int y) {
    if (y > 1) {
      return x * power(x, --y);
    } else {
      return x;
    }
  }

}

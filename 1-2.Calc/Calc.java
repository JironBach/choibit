public class Calc{
   public static void main(String[] args){
      System.out.println("整数同士の演算");
      System.out.println(2 + 7);
      System.out.println(2 - 7);
      System.out.println(2 * 7);
      System.out.println(2 / 7);
      System.out.println("-------");

      System.out.println("小数の演算");
      System.out.println(2.0 + 7);
      System.out.println(2.0 - 7);
      System.out.println(2.0 * 7);
      System.out.println(2.0 / 7);
      System.out.println("-------");

      System.out.println("余りの演算");
      System.out.println(2 % 7);
      System.out.println(2.0 % 7);
      System.out.println("-------");

      System.out.println("int型の最大値: " + Integer.MAX_VALUE);
      System.out.print("最大値 + 1: ");
      System.out.println(Integer.MAX_VALUE + 1);
      System.out.println("-------");
      
      System.out.println("int型の最小値: " + Integer.MIN_VALUE);
      System.out.print("最小値 - 1: ");
      System.out.println(Integer.MIN_VALUE - 1);
      System.out.println("-------");

      //この関数は最期に呼ぶこと
      study_console_ln();
   }

   protected static void study_console_ln(){
      System.out.print("コンソール出力の最後の'%'の調査");
      System.out.println("-------");
      System.out.print("------- ");
      System.out.println("-------");
      System.out.print("-------\n");
      System.out.print("-------");
      //System.out.println();
   }

}


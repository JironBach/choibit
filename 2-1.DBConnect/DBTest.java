import java.sql.*;

public class DBTest{
  public static void main(String[] args)throws Exception {
    String driver = "org.postgresql.Driver";
    Class.forName(driver);
    String url = "jdbc:postgresql://localhost:5432/practice";
    String password = System.getenv("LOCAL_DB_PASSWORD");
    Connection conn = null;
    try {
      conn = DriverManager.getConnection(url, "postgres", password);
    } catch (SQLException e) {
      // 例外処理
      System.out.println("エラー発生❗️");
      e.printStackTrace();  //エラー内容をコンソールに出力する

      return;
    } finally {
    }
    System.out.println("繋がったらしい💛");

    select_users(conn);
  }

  public static int select_users(Connection conn) {
    String sql = "SELECT * FROM users";
    //変数定義
    PreparedStatement ps = null;
    ResultSet rs = null;
    int colCount = 0;
    
    try {
      //実行するSQL文とパラメータを指定する
      ps = conn.prepareStatement(sql);
      //ps.setString(1, "2");
      rs = ps.executeQuery();
      colCount = rs.getMetaData().getColumnCount();
      System.out.println("取得したカラム数:" + colCount);

      //取得した結果を全件出力する
      while(rs.next()){
        //System.out.print(rs.getInt("id"));
        System.out.print(rs.getString("name"));
        //System.out.print("/" + rs.getString("ADDRESS"));
        //System.out.print("/" + rs.getString("TEL"));
        System.out.println();
      }
    } catch (SQLException e) {
      System.out.println("エラー発生❗️");
      e.printStackTrace();
    } finally {
    }
    return colCount;
  }
}


package cn.edu.wic.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

import com.alibaba.druid.pool.DruidDataSource;

public class DB {
	private static DruidDataSource dataSource;
	
	static {
		ResourceBundle db = ResourceBundle.getBundle("db");
		
		dataSource = new DruidDataSource();
		//基本属性 url、user、password
		dataSource.setDriverClassName(db.getString("db.driverClassName"));
		dataSource.setUrl(db.getString("db.url"));
		dataSource.setUsername(db.getString("db.username"));
		dataSource.setPassword(db.getString("db.password"));
		
		//配置初始化大小、最小、最大
		dataSource.setInitialSize(3);
		dataSource.setMinIdle(1);
		dataSource.setMaxActive(12);
		
		//配置获取连接等待超时的时间
		dataSource.setMaxWait(60000);
		
		//配置间隔多久才进行一次检测，检测需要关闭的空闲连接，单位是毫秒
		dataSource.setTimeBetweenEvictionRunsMillis(60000);
		
		//配置一个连接在池中最小生存的时间，单位是毫秒
		dataSource.setMinEvictableIdleTimeMillis(300000);
		
		dataSource.setValidationQuery("SELECT 'x'");
		dataSource.setTestWhileIdle(true);
		dataSource.setTestOnBorrow(false);
		dataSource.setTestOnReturn(false);
		
		//打开PSCache，并且指定每个连接上PSCache的大小
		dataSource.setPoolPreparedStatements(true);
		dataSource.setMaxPoolPreparedStatementPerConnectionSize(20);
	}
	
	public static Connection getConnection(){
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public static void closeConnection(Connection conn){
		try {
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeStmt(Statement stmt){
		try {
			stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closePstmt(PreparedStatement pstmt){
		try {
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void setAutoCommit(Connection conn, Boolean autoCommit){
		try {
			conn.setAutoCommit(autoCommit);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection conn){
		try {
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn){
		try {
			conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

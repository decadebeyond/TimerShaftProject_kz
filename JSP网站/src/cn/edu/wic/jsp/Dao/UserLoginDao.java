package cn.edu.wic.jsp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.edu.wic.jsp.DB;
import cn.edu.wic.jsp.Bean.UserLogin;

public class UserLoginDao {
	public UserLogin Login(String username,String password){
		UserLogin user = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn=DB.getConnection();
			pstmt=conn.prepareStatement("select User_id,Passowrd"
					+" form UserBasicInfo"
					+" where Username=? and Password=?");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			if(rs.next()){
				user = new UserLogin();
				user.setUsername(username);
				user.setPassword(password);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally{
			DB.closePstmt(pstmt);
			DB.closeConnection(conn);
		}
		return user;
	}
}

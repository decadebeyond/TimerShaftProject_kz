package cn.edu.wic.jsp.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import cn.edu.wic.jsp.DB;
import cn.edu.wic.jsp.Bean.UserRegister;

public class UserRegisterDao {
	public void save(UserRegister user){
		Connection conn = null;
		PreparedStatement pstmt = null;
		Statement ps = null;
		ResultSet rs = null;
		try{
			conn=DB.getConnection();
			ps=conn.createStatement();
			rs=ps.executeQuery("select Max(user_id)+1 from userbasicinfo");
			pstmt=conn.prepareStatement("insert into userbasicinfo"
					+" (User_id,Username,Password,User_registrationDate,Sex,Phone_number,Mailbox)"
					+" values(?,?,?,now(),?,?,?)");
			String max="";
			if(rs.next()){
				max=rs.getString("Max(user_id)+1");
			}
			pstmt.setString(1, max);
			pstmt.setString(2, user.getUsername());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getSex());
			pstmt.setString(5, user.getPhone_number());
			pstmt.setString(6, user.getEmail());
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DB.closePstmt(pstmt);
			DB.closeConnection(conn);
		}
	}
}

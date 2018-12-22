package cn.edu.wic.jsp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.wic.jsp.Bean.UserRegister;
import cn.edu.wic.jsp.Dao.UserRegisterDao;

public class UserToRegisterServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsp/userLogin/UserRegister.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		UserRegister userRe=new UserRegister();
		userRe.setUsername(request.getParameter("username"));
		userRe.setPassword(request.getParameter("passowrd"));
		userRe.setSex(request.getParameter("sex"));
		userRe.setPhone_number(request.getParameter("phone_number"));
		userRe.setEmail(request.getParameter("email"));
		
		UserRegisterDao userReDao=new UserRegisterDao();
		userReDao.save(userRe);
		
		response.sendRedirect("/jsp-website/user/login");
		
		/*
		request.setCharacterEncoding("UTF-8");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String sex = request.getParameter("sex");
		String phone_number = request.getParameter("phone_number");
		String email = request.getParameter("email");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=UTF-8","root",null);
			
			pstmt=conn.prepareStatement("insert into UserBasicInfo"
					+" (username,password,user_registrationDate,sex,phone_number,email)"
					+" values(?,?,now(),?,?,?)");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			pstmt.setString(3, sex);
			pstmt.setString(4, phone_number);
			pstmt.setString(5, email);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pstmt.close();
			conn.close();
		}
		
		response.sendRedirect("/jsp/user/login");
		*/
	}

}

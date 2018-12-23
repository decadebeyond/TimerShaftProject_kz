package cn.edu.wic.jsp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.wic.jsp.Bean.UserLogin;
import cn.edu.wic.jsp.Dao.UserLoginDao;
import cn.edu.wic.jsp.vcode.ValidateCode;

public class UserToLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsp/userLogin/UserLogin.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		Map<String, String> error=new HashMap<String, String>();
		/*
		String sessionVcode=(String)request.getSession().getAttribute(ValidateCode.VCODE_SESSION_KEY);
		
		if(!sessionVcode.equalsIgnoreCase(vcode)){
			error.put("vcode", "验证码错误");
		}*/
		if(username==null || username.length()<3 || username.length()>12){
			error.put("username", "用户名称长度介于[3,12]之间");
		}
		if(password==null || password.length()<3 || password.length()>12){
			error.put("password", "密码长度介于[3,12]之间");
		}
		
		if(error.size()>0){
			request.setAttribute("error", error);
			request.getRequestDispatcher("/WEB-INF/jsp/userLogin/UserLogin.jsp").forward(request, response);
			return;
		}
		
		UserLoginDao userDao=new UserLoginDao();
		UserLogin login=userDao.Login(username,password);
		if(login==null){
			error.put("login", "用户名或密码错误");
			request.setAttribute("error", error);
			request.getRequestDispatcher("/WEB-INF/jsp/userLogin/UserLogin.jsp").forward(request, response);
			return;
		}else{
			request.getSession().setAttribute("login", login);
			response.sendRedirect("/jsp-website/userpage/article");
			return;
		}
	}

}

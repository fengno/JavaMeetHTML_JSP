package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Users;

public class RegServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6442333261444588761L;

	/**
	 * Constructor of the object.
	 */
	public RegServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		Users u = new Users();
		String username,mypassword,gender,email,introduce,isAccept;
		Date birthday;
		String[] favorites;
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try
		{
			username = request.getParameter("username");
			mypassword = request.getParameter("mypassword");
			gender = request.getParameter("gender");
			email = request.getParameter("email");
			introduce = request.getParameter("introduce");
			birthday = sdf.parse(request.getParameter("birthday"));
			// 如果获取表单单个值，可以用getParameter；如果获取复选框类型的多个值，可以用getParameterValues
//			if(request.getParameterValues("isAccept")!=null)
			if(request.getParameter("isAccept")!=null)
			{
				isAccept = request.getParameter("isAccept");
			}
			else
			{
			  isAccept = "false";
			}
			//用来获取多个复选按钮的值
			favorites = request.getParameterValues("favorite");
			u.setUsername(username);
			u.setMypassword(mypassword);
			u.setGender(gender);
			u.setEmail(email);
			u.setFavorites(favorites);
			u.setIntroduce(introduce);
			if(isAccept.equals("true"))
			{
				u.setFlag(true);
			}
			else
			{
				u.setFlag(false);
			}
			u.setBirthday(birthday);
			
			//把注册成功的用户对象保存在session中
			request.getSession().setAttribute("regUser", u);
			//跳转到注册成功页面
			request.getRequestDispatcher("../userinfo.jsp").forward(request,response);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
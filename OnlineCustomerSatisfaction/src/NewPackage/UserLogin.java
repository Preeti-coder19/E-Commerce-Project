package NewPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		try {
			String uname = request.getParameter("uname");
			String pwd = request.getParameter("pwd");
			String sql = "select * from newcustomer where LoginName = '" + uname + "' and Password = '" + pwd + "'";
			out.print(sql);
			HttpSession session = request.getSession();
			ResultSet rs =DBClass.executeQuery(sql); 
			if (rs.next()) {
				session.setAttribute("id", rs.getString(1));
				response.sendRedirect("UserMainPage.jsp");
			} else {
				response.sendRedirect("UserLogin.jsp?msg=Invalid UserName/Password");
			}
		} catch (Exception e) {
			out.print("Exception in Admin Login : " + e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

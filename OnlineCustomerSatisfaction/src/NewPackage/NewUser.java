package NewPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewUser
 */
public class NewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NewUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		try {
			String uname = request.getParameter("uname");
			String pwd = request.getParameter("pwd");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String emailid = request.getParameter("emailid");
			String phnum = request.getParameter("phnum");
			String address = request.getParameter("address");

			String sql = "insert into NewCustomer(FirstName, LastName, PhoneNum, "
					+ "EmailId, LoginName, Password, Address) values('" 
					+ fname + "','" + lname + "','" + phnum + "','"
					+ emailid + "','" + uname + "','" + pwd + "','" + address + "')";
			out.print(sql);
			if (DBClass.executeUpdate(sql) > 0) {
				response.sendRedirect("NewUser.jsp?msg=NewUser Added Success");
			} else {
				//response.sendRedirect("NewUser.jsp?msg=User Not Added");
			}
		} catch (Exception e) {
			out.print("Exception in Admin Login : " + e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package NewPackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewService
 */
public class NewService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		try {
			String sname = request.getParameter("sname");
			String stype = request.getParameter("stype");
			String details = request.getParameter("details");
			
			String sql = "insert into NewService(productName, ProductType, MoreDetails) values('"+
			sname+"','"+stype+"','"+details+"')";
			out.print(sql);
			if (DBClass.executeUpdate(sql)>0) {
				response.sendRedirect("AddNewService.jsp?msg=Service Added Success");
			} else {
				response.sendRedirect("AddNewService.jsp?msg=Service Not Added");
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

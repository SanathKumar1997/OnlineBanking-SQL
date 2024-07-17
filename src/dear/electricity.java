package dear;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.*;

@WebServlet("/electricity")
public class electricity extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     String ch=request.getParameter("choose");
	     String ab="electricity";
	     String xy="",yt="";
			xy="electricity";
			yt="electricity_details";
		PrintWriter out= response.getWriter();
		String b=request.getParameter("acno1");
		Double d=Double.parseDouble(request.getParameter("amount1"));
		String yz=request.getParameter("sno1");
		String l= request.getSession(false).getAttribute("user").toString();
		Double am=(double)0;
		DateFormat df=new SimpleDateFormat("yyyy/MM/DD HH:MM:SS");
		Date date=new Date();
		UUID id=UUID.randomUUID();
		String iop=id.toString();
		try{
			Class.forName("com.mysql.jdbc.Driver");
		    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
		    String query21 ="SELECT *FROM accounts where username='"+l+"';";
		    PreparedStatement ps=conn.prepareStatement(query21);
		    ResultSet rl=ps.executeQuery(query21);
		    rl.next();
			Double z=rl.getDouble("amount"); 
			String y=rl.getString("accountno");
			z=z-d;
			String query22="UPDATE accounts set amount="+z+" where username='"+l+"';";
			PreparedStatement pl=conn.prepareStatement(query22);
			int yy=pl.executeUpdate(query22);
			if(yy > 0)
			{
				out.print("");
			}
			pl.close();
			ps.close();
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection comm= DriverManager.getConnection("jdbc:mysql://localhost:3306/govt","root","root");
			String query11 ="SELECT *FROM "+xy+" where  accountno='"+b+"';";
		    PreparedStatement pm=comm.prepareStatement(query11);
		    ResultSet rs=pm.executeQuery(query11);
		    rs.next();
			Double p=rs.getDouble("amount");
			p=p+d;
			String query12="UPDATE "+xy+" set amount="+p+" where accountno='"+b+"';";
			PreparedStatement pp=comm.prepareStatement(query12);
			int yp=pp.executeUpdate(query12);
			if(yp > 0)
			{
				out.print("");
			}
			pp.close();
			pm.close();
			pm.close();
			
			
			String query56="insert into "+yt+" values(?,?,?,?,?,?)";
			PreparedStatement yo=comm.prepareStatement(query56);
			yo.setString(1,l);
			yo.setString(2,y);
			yo.setString(3,df.format(date));
			yo.setDouble(4, d);
			yo.setString(5, iop);
			yo.setString(6, yz);
			int  re=yo.executeUpdate();
			if(re>0)
			{
				out.print("");
			}
			yo.close();
			
		    String upo="insert into bank values(?,?,?,?,?,?,?)";
			
			Class.forName("com.mysql.jdbc.Driver");
		    Connection coll= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
			PreparedStatement pr=coll.prepareStatement(upo);
			out.print("hello");
			pr.setDouble(1, d);
			pr.setString(2, iop);
			pr.setString(3, df.format(date));
			pr.setDouble(4, am);
			pr.setString(5, l);
			pr.setString(6, ch);
			pr.setString(7, b);
			int ii=pr.executeUpdate();
				if(ii>0)
				{
					out.println("transferred successfully");
					out.println("your transaction id is:"+iop);
				}
				pr.close();
		    
		}
		
	catch (ClassNotFoundException |SQLException  e){
			
	        out.print("wrong username or password");
			}
		
		
	}

	

}

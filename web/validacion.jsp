<%-- 
    Document   : validacion
    Created on : 16-06-2018, 0:05:51
    Author     : Gerald
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <body>
        <%
        String usuario = request.getParameter ("user");
        String contrase�a = request.getParameter ("pass");
        String usuariosql="";
        String contrase�asql="";
        
        if (usuario.equals("")&&(contrase�a.equals(""))){
            RequestDispatcher rd = request.getRequestDispatcher("autentificar.jsp");
            request.setAttribute ("msg","no ha llenado ningun campo por favor complete los campos");
            rd.forward(request,response); 
            }
       
            
         
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ena","root","");
                String query="SELECT * FROM user WHERE user.username='"+usuario+"' AND user.password='"+contrase�a+"';";
                Statement st=conn.createStatement ();
                ResultSet rs= st.executeQuery(query);
                
            
                while(rs.next()){
                 usuariosql= rs.getString("username");
                 contrase�asql=rs.getString("password");
                }
            }catch(SQLException ex){
            throw new SQLException(ex);  
            }
          if(!usuario.equals(usuariosql)||!contrase�a.equals(contrase�asql)){
                request.setAttribute("msg", "Usuario o contrase�a incorrecta");
                RequestDispatcher rd = request.getRequestDispatcher("autentificar.jsp");
                rd.forward(request, response);                
            }
        if(usuario.equals(usuariosql)||contrase�a.equals(contrase�asql)){
                 HttpSession User = (HttpSession)request.getSession();      
                User.setAttribute("nombre",usuario);
                response.sendRedirect("menu.jsp");             
            }
    
 
     
        
            
        %>
    </body>
</html>

<%

    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    System.out.println("Name : " + name);
    System.out.println("Password : " + pass);

    if (name.equalsIgnoreCase("admin") & pass.equalsIgnoreCase("admin")) {

        response.sendRedirect("admin_home.jsp");
    } else {
        response.sendRedirect("admin.jsp");
    }
%>

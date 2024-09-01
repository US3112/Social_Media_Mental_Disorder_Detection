/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ActionPage;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Register")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class Registration extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/detection";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String state = request.getParameter("state");
        String country = request.getParameter("country");

        System.out.println("User Details : " + name + email + pass + dob + gender + state + country);

        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null; // connection to the database
        // message will be sent back to client

        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            System.out.println("User Details : " + name + email + pass + dob + gender + state + country);
            // constructs SQL statement
            String sql = "INSERT INTO reg (name, email, pass, dob, gender, state, country, photo) values (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, pass);
            statement.setString(4, dob);
            statement.setString(5, gender);
            statement.setString(6, state);
            statement.setString(7, country);

            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(8, inputStream);
            }

            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                response.sendRedirect("index.jsp?rmsg=success");
            } else {
                response.sendRedirect("index.jsp?rmsgg=Failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
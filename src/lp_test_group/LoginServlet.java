package lp_test_group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    private String username = "liupeng";
    private String password = "lp184125";

    @Override
    public void init() throws ServletException {
        super.init();
        InputStream resourceAtream = this.getServletContext().getResourceAsStream("/db.properties");
        Properties properties = new Properties();
        try {
            properties.load(resourceAtream);
            String URL = properties.getProperty("url");
            username = properties.getProperty("username");
            password = properties.getProperty("password");
            System.out.println(URL+" " + username + " " + password);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username01 = request.getParameter("username");
        String password01 = request.getParameter("password");
        System.out.println(username01 + " " + password01);
        if(username.equals(username01)) {
            if (password.equals(password01)) {
                //对
                System.out.println("1111");
                request.getRequestDispatcher("dome/loginRight.jsp").forward(request,response);
            } else {
                //密码错误
                System.out.println("111");
                request.setAttribute("errorMessage","密码错误");
                request.getRequestDispatcher("/dome/loginError.jsp").forward(request,response);
            }
        } else {
            //用户名错误
            System.out.println("11");
            request.setAttribute("errorMessage", "账户不存在");
            request.getRequestDispatcher("/dome/loginError.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

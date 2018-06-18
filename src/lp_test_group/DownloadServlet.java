package lp_test_group;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@WebServlet(name = "DownloadServlet")
public class DownloadServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //如何将服务器上的资源返回给浏览器
        /*//输出字节码文件
        response.getWriter();*/

        String filename = request.getParameter("filename");

        /*//不要预览，直接下载
        String mimeType = this.getServletContext().getMimeType(filename);
        response.setContentType(mimeType);
        response.setHeader("Content-Disposition",
                "attachment:filename=" + filename);
*/


        //获取ServletContext对象的就对路径
        String realPath = this.getServletContext().getRealPath("download/" + filename);

        InputStream inputStream = new FileInputStream(realPath);
        //输出二进制文件
        ServletOutputStream outputStream = response.getOutputStream();

        //文件拷贝
        int len = 0;
        byte[] buffer = new byte[1024];
        while((len=inputStream.read(buffer))>0) {
            outputStream.write(buffer, 0, len);
        }

        inputStream.close();
        outputStream.close();

    }
}

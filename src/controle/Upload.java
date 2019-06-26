package controle;

import java.io.File;
import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.FileUtils;

import modele.Bien;
import modele.Client;
 
@WebServlet("/Upload")
@MultipartConfig(
	fileSizeThreshold=1024*1024*10,	// 10 MB 
    maxFileSize=1024*1024*50,		// 50 MB
    maxRequestSize=1024*1024*100)	// 100 MB
public class Upload extends HttpServlet {
    private static final long serialVersionUID = 1L;
	private static final String IMAGE_DIRECTORY = "images";
	private static final String UPLOAD_DIRECTORY = Upload.class.getProtectionDomain().getCodeSource().getLocation().getPath().substring(1,Upload.class.getProtectionDomain().getCodeSource().getLocation().getPath().length()-16)+IMAGE_DIRECTORY;

	public static String UPLOAD_DIRECTORY() {
		return UPLOAD_DIRECTORY;
	}

	HttpSession session;
	Client C;
	Bien b;
     
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	session = request.getSession();
    	switch(request.getParameter("upload")) {
        case "profile":
        	if(session.getAttribute("client")!=null) {
        		File CLIENT = new File(UPLOAD_DIRECTORY+File.separator+"client");
                if (!CLIENT.exists()) {
                    CLIENT.mkdirs();
                }
                File PROFILE = new File(CLIENT+File.separator+new File(((Client)session.getAttribute("client")).getUtilisateur()));
                if(request.getParts().size()==0) {
                	FileUtils.copyFile(new File(UPLOAD_DIRECTORY + File.separator + "profile.jpg"), new File(PROFILE + File.separator + "profile.jpg"));
                }
                else {
                	for (Part part : request.getParts()) {
                        if (!PROFILE.exists()) {
                            PROFILE.mkdirs();
                        }
                        part.write(PROFILE + File.separator + "profile.jpg");
                    }
                }
        	}
        	break;
        	
        case "bien":
        	if(session.getAttribute("bien")!=null) {
        		File BIEN = new File(UPLOAD_DIRECTORY+File.separator+"bien");
                if (!BIEN.exists()) {
                    BIEN.mkdirs();
                }
            	for (Part part : request.getParts()) {
                    File ID = new File(BIEN+File.separator+new File(Integer.toString((Integer)session.getAttribute("bien"))));
                    if (!ID.exists()) {
                        ID.mkdirs();
                    }
                    part.write(ID + File.separator + ID.listFiles().length+".jpg");
                }
        	}
        	break;
        }
    }
}
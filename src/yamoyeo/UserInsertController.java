package yamoyeo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class UserInsertController {

	@RequestMapping(value = "userInsert.do")
	public String userInsert(@ModelAttribute("user") UserVO user, HttpServletRequest request) {

		HttpSession session = request.getSession();

		System.out.println("user = " + user);
		
		// Service
		Service service = Service.getInstance();
		service.insertUser(user);

		// Output View 
		session.setAttribute("user_id", user.getUser_id());
		return "view02_ver3";
	}

}

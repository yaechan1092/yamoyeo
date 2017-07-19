package yamoyeo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupDeleteController  {

	@RequestMapping(value = "groupDelete.do")
	public void deleteGroup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Parameter
		String id = request.getParameter("id");

		// Service 
		Service service = Service.getInstance();
		service.deleteGroup(id);

		// Output View 
		HttpUtil.forward(request, response, "/result/groupDeleteOutput.jsp");

	}

}

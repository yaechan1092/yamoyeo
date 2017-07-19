package yamoyeo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserUpdateController {

	@RequestMapping(value = "userUpdate.do")
	public void updateUser(@ModelAttribute("user") UserVO user, HttpServletRequest request,
			HttpServletResponse response) {
		// 유효성 검사
		if (user.getUser_id().isEmpty() || user.getUser_pwd().isEmpty() || user.getUser_name().isEmpty()
				|| user.getUser_name().isEmpty() || user.getSex().isEmpty() || user.getInterest().isEmpty()
				|| user.getAddress().isEmpty()) {
			request.setAttribute("error", "모든 정보를 입력해주세요");
			HttpUtil.forward(request, response, "/userUpdate.jsp");
			return;
		}

		// Service
		Service service = Service.getInstance();
		service.updateUser(user);

		// Output View
		request.setAttribute("id", user.getUser_id());
		HttpUtil.forward(request, response, "/mainPage.jsp");
	}

}

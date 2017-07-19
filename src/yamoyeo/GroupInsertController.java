package yamoyeo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.*;
import javax.servlet.http.*;

@Controller
public class GroupInsertController {

	@RequestMapping(value = "groupInsert.do", method = RequestMethod.POST)
	public String insertGroup(@ModelAttribute("group") GroupVO2 group) {

		System.out.println(group);

		Service service = Service.getInstance();
		service.insertGroup(group);

		return "mainPage";// output 출력

	}
}

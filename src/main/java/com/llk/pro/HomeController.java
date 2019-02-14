package com.llk.pro;

import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.llk.pro.dao.EmployerDAO;
import com.llk.pro.vo.EmployerVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		
		return "login";
	}
	
	@RequestMapping(value="/employerSignInForm.do") // 회원가입 창으로 이동
	public String employerSignInForm(@ModelAttribute("employerVO") EmployerVO employerVO,Model model ) throws Exception {
		return "signIn";
	}
	
	
	@RequestMapping(value="/signInTry.do", method = RequestMethod.POST)
	public String SignInTry(/* @ModelAttribute("employerVO") EmployerVO employerVO, Model model */) throws SQLException {
		/*
		 * EmployerVO vo = new EmployerVO(); vo = employerVO;
		 * model.addAttribute("msg",vo.getBirth());
		 * 
		 * 
		 * //int result = EmployerDAO.employerUpdate(employerVO);
		 */		
		return "test";
		
	}
	
	@RequestMapping(value="/loginTry.do",method= RequestMethod.POST) public String loginTry(@RequestParam("id") String id,@RequestParam("pwd") String pwd, Model model) {
		//로그인 처리
		EmployerVO vo = new EmployerVO();
		String str ="";
		vo.setId(id);
		vo.setPwd(pwd);
		
		int result = EmployerDAO.loginCheck(vo); // 로그인 체크 
		if(result == 1) { // 로그인 성공했을 시
			return "main";
		}
		else if(result == 0 ) { // 아이디는 일치하고 비밀번호는 일치하지 않을 때
			str = "비밀번호가 틀렸습니다.";
			model.addAttribute("msg", str); 
			return "login";
		}
		else if(result == -1) { // 일치하는 아이디가 존재하지 않을 때
			str = "아이디가 틀렸습니다.";
			model.addAttribute("msg",str);
			return "login";
		}
		
		return "";
	}
	

	
}

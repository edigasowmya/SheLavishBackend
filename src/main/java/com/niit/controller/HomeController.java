package com.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDao;
import com.niit.dao.SupplierDao;
import com.niit.dao.UserDao;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class HomeController {
	
	
	

	@Autowired
    CategoryDao categoryDAO;
    
	
	@Autowired
    SupplierDao supplierDao;
	
	

	@Autowired
    UserDao userDAO;
	
	
	
	
	  @RequestMapping("/login")
	    public String login(@RequestParam(value="error",required=false) String error,
	    		@RequestParam(value="logout",required=false) String logout,
	    		Model model){
	    	if(error!=null)
	    		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	    	if(logout!=null)
	    		model.addAttribute("logout","Loggedout successfully");
	    		model.addAttribute("LoginPageClicked", true);
	    	return "login";
	    	
	    }
	   
	  
	  
	  	@SuppressWarnings("unchecked")
		@RequestMapping(value = "/login_session_attributes")
		public String login_session_attributes(HttpSession session,Model model) {
	  		 System.out.println("Before fetching email");
			String email = SecurityContextHolder.getContext().getAuthentication().getName();
			 System.out.println("After fetching email");
			User user = userDAO.get(email);
			session.setAttribute("userid", user.getId());
			session.setAttribute("name", user.getEmail());
			session.setAttribute("LoggedIn", "true");
			System.out.println(session.getAttribute("userid"));
			Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
			.getAuthentication().getAuthorities();
			String role="ROLE_USER";
			for (GrantedAuthority authority : authorities) 
			{
				session.setAttribute("user", user);
			  
			     if (authority.getAuthority().equals(role)) 
			     {
			    	 System.out.println("inside user check");
			    	 session.setAttribute("UserLoggedIn", "true");
			    	//session.setAttribute("cartsize",cartDAO.cartsize((Integer)session.getAttribute("userid")));
			    	 return "redirect:/";
			     }
			     else 
			     {
			    	 System.out.println("inside Admin check");
			    	 session.setAttribute("Administrator", "true");
			    	 model.addAttribute("product",  new Product());
			    	 model.addAttribute("ProductPageClicked", "true");
			    	 model.addAttribute("supplierList",supplierDao.retrieveSupplier());
			    	 model.addAttribute("categoryList",categoryDAO.retrieveCategory());
			    	 System.out.println("Go to Admin Page");
				 return "/Admin";
			     }
		}
			
			return "/welcome";
		
		}
	    
	    
	  
	  
	  
	  
	  
}
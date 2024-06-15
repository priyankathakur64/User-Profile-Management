package com.MasterTech.UserManagementSystem.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.MasterTech.UserManagementSystem.Entity.Blog;
import com.MasterTech.UserManagementSystem.Entity.Login;
import com.MasterTech.UserManagementSystem.Entity.User;


@Controller
public class UserController {
	@Autowired
	SessionFactory sf;
	
	/*@RequestMapping("show")
	public String show() {
		return "adminopr";
	}*/
	
	@RequestMapping("/")
	public String name() {
		return "useradminbtn";
	}

	@RequestMapping("/priyankaLogin")
	public String priyankaLogin() {
		return "priyanka";
	}

	@RequestMapping("/priyanka")
	public String priyankaLogin(Login login, Model model) {
		Session session = sf.openSession();
		Login dbLogin = session.get(Login.class, login.getPassword());
		String page = "priyanka";
		String msg = null;
		if (dbLogin != null) {
			if (login.getUsername().equals(dbLogin.getUsername())) {
				page = "userop";
			} else {
				msg = "Invalid Username";
			}
		} else {
			msg = "Invalid Password";
		}
		model.addAttribute("msg", msg);
		return page;
	}

	@RequestMapping("/priyankathakurCreateAccount")
	public String CreateAccount() {
		return "priyankathakur";
	}

	@RequestMapping("/priyankathakur")
	public String priyankagiraseDB(Login login, Model model) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		Login dblogin = s.get(Login.class, login.getPassword());
		String page = "priyankathakur";
		String msg = null;
		if (dblogin != null) {
			if (login.getUsername().equals(dblogin.getUsername())) {
				msg = "Invalid Credential";
			}
		} else {
			page = "priyankathakur";
			s.save(login);
			t.commit();
		}
		model.addAttribute("msg", msg);
		return page;
	}
	
	@RequestMapping("/backToLogin")
	public String backToLogin() {
		return "useradminbtn";
	}
//Admin Login
	@RequestMapping("/adpriyankalogin")
	public String adpriyanka(Login login) {
		return "adpriyanka";
	}

	@RequestMapping("/adpriyanka")
	public String adpriyankac(Login login) {
		// if (login.username=="priyanka" && login.password=="1111") {}
		if (login.username.equals("priyanka") && login.password.equals("1111")) {
			return "adblog";
		} else {
			return "adpriyanka";
		}
	}
	//Create a user
	@RequestMapping("save")
	public String signup(User user){
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(user);
		t.commit();
		s.close();
		return "adminopr";
	}
	//Update existing user
	@RequestMapping("viewupdate")
	public String showUpdate() {
		return "adminopr";
	}
	
	@RequestMapping("update")
	public String update(User user){
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.update(user);
		t.commit();
		s.close();
		return "userop";
	}
	
	//Create a blog
		@RequestMapping("createblog")
		public String createblog(Blog blog){
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			s.save(blog);
			t.commit();
			s.close();
			return "editblog";
		}
		
		//Update existing user
		@RequestMapping("blogupdate")
		public String blogUpdate() {
			return "adblog";
		}
		
		@RequestMapping("bupdate")
		public String bupdate(Blog blog){
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			s.update(blog);
			t.commit();
			s.close();
			return "adblog";
		}
		
	@RequestMapping("adminopr")
	public String adminopr() {
		return "adminopr";
	}
	
	@RequestMapping("userop")
	public String userop() {
		return "userop";
	}
	
	@RequestMapping("blog")
	public String blogPage() {
		return "blog";
	}
	
	@RequestMapping("logout")
	public String logout() {
		return "useradminbtn";
	}
	
	@RequestMapping("useradminbtn")
	public String useradminbtn() {
		return "useradminbtn";
	}
	//Delete a user
	@RequestMapping("viewdelete")
	public String showDelete() {
		return "adminopr";
	}
	
	@RequestMapping("delete")
	public String delete(User user){
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		User u =s.get(User.class, user.getId());
		s.delete(u);
		t.commit();
		s.close();
		return "adminopr";
	}
	
	@RequestMapping("editblog")
	public String editblog() {
		return "editblog";
	}
	
	//Delete a blog
		@RequestMapping("blogdelete")
		public String blogDelete() {
			return "editblog";
		}
		
		@RequestMapping("bdelete")
		public String bdelete(Blog blog){
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			Blog b =s.get(Blog.class, blog.getId());
			s.delete(b);
			t.commit();
			s.close();
			return "editblog";
		}
//Read all
	@RequestMapping("read")
	public String showselect() {
		return "userop";
	}
}
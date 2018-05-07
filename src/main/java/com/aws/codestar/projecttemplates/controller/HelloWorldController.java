package com.aws.codestar.projecttemplates.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Basic Spring MVC controller that handles all GET requests.
 */
@Controller
@RequestMapping("/")
public class HelloWorldController {

    private final String siteName;

    public HelloWorldController(final String siteName) {
        this.siteName = siteName;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView helloWorld() {
        ModelAndView mav = new ModelAndView("index");
        mav.addObject("siteName", this.siteName);
        return mav;
    }
    
    @RequestMapping("/signin")
    public String showSignIn() {
    	return "singin";
    }
    @RequestMapping("/signup")
    public String showSignUp() {
    	
    	return "sign-up";
    }
    
    @RequestMapping("/SavingSignUpData")
    public String savingSignUpData() {
    	return "signup-saving-wait";
    }
    
    @RequestMapping("/questions")
    public String showQues() {
    	return "questions";
    }

	@RequestMapping("trivia_que1")
	public String showTriviaQue1() {
		return "trivia_que1";
	}
	
	@RequestMapping("/check_ans_of_que")
	public String showSolutionTriviaQue1() {
		return "check_ans_wait_page";
	}
	
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}

   @RequestMapping("/checking_user_credential")
   public String checking_user_credetial() {
	   return "checking_user_credential";
   }
   
   // admin controller
   @RequestMapping("/admin")
   public String showAdmin() {
	   return "checking";
   }
   
   //dash board controller
   @RequestMapping("/dashboard")
   public String showDashboard() {
	   return "dashboard";
   }
   
   
   // maths question section controller
   @RequestMapping("/Math_Que_1")
   public String showMath_Que1() {
	   return "maths_add_simple_numbers";
   }
   @RequestMapping("/Math_Que_2")
   public String showMath_Que2() {
	   return "math_add_large_number";
   }
   @RequestMapping("/Math_Que_3")
   public String showMath_Que3() {
	   return "math_add_scrabbled_number";
   }
   @RequestMapping("/Math_Que_4")
   public String showMath_Que4() {
	   return "math_add_scrabbled_noise_number";
   }
   
   
   //Recon Question Section
   @RequestMapping("/Recon_Que_1")
   public String showRecon_Que1() {
	   return "recon_1";
   }
   @RequestMapping("/Recon_Que_2")
   public String showRecon_Que2() {
	   return "recon_2";
   }
   @RequestMapping("/Recon_Que_3")
   public String showRecon_Que3() {
	   return "recon_3";
   }
  
   // trivia section questions
   @RequestMapping("/Parse_Que_1")
   public String showParse_Que1() {
	   return "parse_1";
   }
   @RequestMapping("/Parse_Que_2")
   public String showParse_Que2() {
	   return "parse_2";
   }
   //Trivia Question Section
   @RequestMapping("/Trivia_Que_1")
   public String showTrivia_Que1() {
	   return "tri_1";
   }
   @RequestMapping("/Trivia_Que_2")
   public String showTrivia_Que2() {
	   return "tri_2";
   }
   @RequestMapping("/Trivia_Que_3")
   public String showTrivia_Que3() {
	   return "tri_3";
   }
   @RequestMapping("/Trivia_Que_4")
   public String showTrivia_Que4() {
	   return "tri_4";
   }
   @RequestMapping("/Trivia_Que_5")
   public String showTrivia_Que5() {
	   return "tri_5";
   }
   @RequestMapping("/Trivia_Que_6")
   public String showTrivia_Que6() {
	   return "tri_6";
   }
   @RequestMapping("/Trivia_Que_7")
   public String showTrivia_Que7() {
	   return "tri_7";
   }
   @RequestMapping("/Trivia_Que_8")
   public String showTrivia_Que8() {
	   return "tri_8";
   }
   @RequestMapping("/Trivia_Que_9")
   public String showTrivia_Que9() {
	   return "tri_9";
   }
   //uncover section
   @RequestMapping("/Uncover_Que_1")
   public String showUncover_Que1() {
	   return "uncover_1";
   }
   @RequestMapping("/Uncover_Que_2")
   public String showUncover_Que2() {
	   return "uncover_2";
   }
   @RequestMapping("/Uncover_Que_3")
   public String showUncover_Que3() {
	   return "uncover_3";
   }
   @RequestMapping("/Uncover_Que_4")
   public String showUncover_Que4() {
	   return "uncover_4";
   }
   @RequestMapping("/Uncover_Que_5")
   public String showUncover_Que5() {
	   return "uncover_5";
   }
   @RequestMapping("/Uncover_Que_6")
   public String showUncover_Que6() {
	   return "uncover_6";
   }
   @RequestMapping("/Uncover_Que_7")
   public String showUncover_Que7() {
	   return "uncover_7";
   }
   //Misc section
   @RequestMapping("/Misc_Que_1")
   public String showMisc_Que1() {
	   return "misc_1";
   }
   @RequestMapping("/Misc_Que_2")
   public String showMisc_Que2() {
	   return "misc_2";
   }
   
   @RequestMapping("/leaderboard")
   public String showLeaderBoard()
   {
	   return "leaderboard";
   }
   
   
   // faqs
   @RequestMapping("/faqs")
   public String showFaq()
   {
	   return "faqs";
   }
   
   //rules
   @RequestMapping("/rules")
   public String showRules() {
	   return "rules";
   }
   
   
   /*// checking purpose
   @RequestMapping("/que")
   public String showQue() {
	   return "questions";
   }*/
   
   
   @RequestMapping("/Web_1")
   public String showWeb_Que1() {
	   return "web_1";
   }
   @RequestMapping("/Web_2")
   public String showWeb_Que2() {
	   return "web_2";
   }
   @RequestMapping("/Web_3")
   public String showWeb_Que3() {
	   return "web_3";
   }
   @RequestMapping("/Web_4")
   public String showWeb_Que4() {
	   return "web_4";
   }
   @RequestMapping("/Web_5")
   public String showWeb_Que5() {
	   return "web_5";
   }
   @RequestMapping("/Web_6")
   public String showWeb_Que6() {
	   return "web_6";
   }
   
   // Forensic
   
   @RequestMapping("/For_1")
   public String showFor_Que1() {
	   return "for_1";
   }
   @RequestMapping("/For_2")
   public String showFor_Que2() {
	   return "for_2";
   }
   @RequestMapping("/For_3")
   public String showFor_Que3() {
	   return "for_3";
   }
   @RequestMapping("/For_4")
   public String showFor_Que4() {
	   return "for_4";
   }
   
   
   // web 4 question
   @RequestMapping("/abhi")
   public String showQue() {
	   return "web_4_question";
   }

}

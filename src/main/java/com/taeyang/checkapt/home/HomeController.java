package com.taeyang.checkapt.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/*
    HomeController - 홈 컨트롤러(아파트 리스트 출력 및 입력)
 */
@Controller
public class HomeController {

    private final HomeService homeService;

    @Autowired
    public HomeController(HomeService homeService){this.homeService = homeService;}
    /*
        첫화면, 아파트 리스트 출력 및 입력
     */
    @RequestMapping("/")
    public String root(){ return "redirect:/main";}
    @RequestMapping("/main")
    public String home(Model model) throws Exception{
        List<HomeVO> list = homeService.getCategoryListService();
        model.addAttribute("list",list);
        return "home";
    }



    /*
        아파트 등록 쿼리
     */
    @RequestMapping("/aptInsertProc")
    public String aptInsertProc(HttpServletRequest request) throws Exception{
        HomeVO homeVO = new HomeVO();

        String aptt_name = request.getParameter("aptt_name");
        String aptt_numb = homeService.aptSelectIdxxService();

        homeVO.setAptt_name(aptt_name);
        homeVO.setAptt_numb(aptt_numb);

        homeService.insertAptService(homeVO);

        return "redirect:/main";
    }

    /*
        아파트 삭제
     */

    @RequestMapping("/aptDeleteProc/{aptt_numb}")
    public String aptDeleteProc(@PathVariable String aptt_numb) throws Exception{

        homeService.deleteAptService(aptt_numb);

        return "redirect:/main";
    }


}

package com.taeyang.checkapt.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BoardController {

    private final BoardService boardService;

    @Autowired
    public BoardController(BoardService boardService){ this.boardService = boardService;}

    /*
        하자목록
     */

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String boardList(HttpServletRequest request, @ModelAttribute("printPage") PrintPage printPage, Model model) throws Exception{

        String cate_gory = request.getParameter("cate_gory");        //카테고리받아오기
        printPage.setCate_gory(cate_gory);                         //카테고리 설정

        int listCnt = boardService.boardcount(printPage);              //전체 게시글 수
        List<BoardVO> list = boardService.boardListService(printPage);    //전체 게시글 list
        List<CategoryVO> category_list = boardService.categoryListService();    //카테고리 list



        model.addAttribute("list", list);  //전체 게시글 List
        model.addAttribute("category_list", category_list);//카테고리 이름 넘기기

        PageMaker pageMaker = new PageMaker(); //페이징 처리 객체 생성
        pageMaker.setprintPage(printPage);    //현재 페이지 정보
        pageMaker.setTotalCount(listCnt);     //전체 게시글 수

        model.addAttribute("pageMaker",pageMaker);
        model.addAttribute("curpage",printPage.getPage());
        model.addAttribute("cate_gory",cate_gory);

        return "board";
    }

    @RequestMapping("/detail/{idxx_numb}")
    private String boardDetail(@PathVariable String idxx_numb, Model model) throws Exception{

        BoardVO boardVO = boardService.boardDetailService(idxx_numb);

        model.addAttribute("detail", boardVO);
        model.addAttribute("imgUrl", "https://firebasestorage.googleapis.com/v0/b/taeyangchecklist.appspot.com/o/"+boardVO.getPhot_oooo()
        +"?alt=media");

        return "detail";
    }
}

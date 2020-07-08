package com.taeyang.checkapt.board;

import java.util.List;

public interface BoardMapper {

    public int boardCount(PrintPage printPage) throws Exception;  //게시글 갯수

    public List<BoardVO> boardList(PrintPage printPage) throws Exception;   //게시글 목록

    public List<CategoryVO> categoryList() throws Exception;    //카테고리 목록

    public BoardVO boardDetail(String idxx_numb) throws Exception;  //게시글 상세보기
}

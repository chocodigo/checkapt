package com.taeyang.checkapt.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    private final BoardMapper boardMapper;

    @Autowired
    public BoardService(BoardMapper boardMapper) {this.boardMapper = boardMapper;}

    // 게시글 갯수
    public int boardcount(PrintPage printPage) throws Exception{
        return boardMapper.boardCount(printPage);
    }

    //게시글 목록
    public List<BoardVO> boardListService(PrintPage printPage) throws Exception{
        return boardMapper.boardList(printPage);
    }

    //카테고리 목록
    public List<CategoryVO> categoryListService() throws Exception{
        return boardMapper.categoryList();
    }

    //상세보기
    public BoardVO boardDetailService(String idxx_numb) throws Exception{
        return boardMapper.boardDetail(idxx_numb);
    }
}

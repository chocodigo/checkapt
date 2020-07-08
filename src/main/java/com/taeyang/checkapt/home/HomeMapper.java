package com.taeyang.checkapt.home;

import java.util.List;

public interface HomeMapper {

    //아파트 리스트 받아오기
    public List<HomeVO> getAptList() throws Exception;

    //아파트 입력
    public int insertApt(HomeVO homeVO) throws Exception;

    //아파트PK생성
    public String aptSelectIdxx() throws Exception;

    //아파트 삭제
    public int deleteApt(String aptt_numb) throws Exception;

}

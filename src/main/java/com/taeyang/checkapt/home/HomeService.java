package com.taeyang.checkapt.home;

/*
    HomeService - 메인화면 관련 서비스(입력, 출력)
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeService {
    private final HomeMapper homeMapper;

    @Autowired
    public HomeService(HomeMapper homeMapper){this.homeMapper=homeMapper;}
    //아파트 리스트 받아오는 서비스
    public List<HomeVO> getCategoryListService() throws Exception{
        return homeMapper.getAptList();
    }

    //아파트 입력하는 서비스
    public int insertAptService(HomeVO homeVO) throws Exception{
        return homeMapper.insertApt(homeVO);
    }

    //아파트 PK 생성
    public String aptSelectIdxxService() throws Exception{
        return homeMapper.aptSelectIdxx();
    }

    //아파트 삭제하는 서비스
    public int deleteAptService(String aptt_numb) throws Exception{
        return homeMapper.deleteApt(aptt_numb);
    }

}

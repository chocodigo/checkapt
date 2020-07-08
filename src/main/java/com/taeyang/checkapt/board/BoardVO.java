package com.taeyang.checkapt.board;

import java.util.Date;

public class BoardVO {
    private String idxx_numb;
    private String aptt_name;
    private String cont_ents;
    private String phot_oooo;
    private String pk1;
    private String pk2;
    private String cate_name;
    private Date reg_date;
    private int numb_keyx;
    private String cate_idxx;

    public String getCate_idxx() {
        return cate_idxx;
    }

    public void setCate_idxx(String cate_idxx) {
        this.cate_idxx = cate_idxx;
    }

    public int getNumb_keyx() {
        return numb_keyx;
    }

    public String getIdxx_numb() {
        return idxx_numb;
    }

    public String getAptt_name() {
        return aptt_name;
    }

    public String getCont_ents() {
        return cont_ents;
    }

    public String getPhot_oooo() {
        return phot_oooo;
    }

    public String getPk1() {
        return pk1;
    }

    public String getPk2() {
        return pk2;
    }

    public String getCate_name() {
        return cate_name;
    }



    public void setNumb_keyx(int numb_keyx) {
        this.numb_keyx = numb_keyx;
    }

    public void setIdxx_numb(String idxx_numb) {
        this.idxx_numb = idxx_numb;
    }

    public void setAptt_name(String aptt_name) {
        this.aptt_name = aptt_name;
    }

    public void setCont_ents(String cont_ents) {
        this.cont_ents = cont_ents;
    }

    public void setPhot_oooo(String phot_oooo) {
        this.phot_oooo = phot_oooo;
    }

    public void setPk1(String pk1) {
        this.pk1 = pk1;
    }

    public void setPk2(String pk2) {
        this.pk2 = pk2;
    }

    public void setCate_name(String cate_name) {
        this.cate_name = cate_name;
    }

    public Date getReg_date() {
        return reg_date;
    }

    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }
}

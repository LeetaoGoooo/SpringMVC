package com.gmail.leetao94cn.dao;


/**
 * Created by user on 2016/8/31.
 */
public class CityGrid {
    private  String id,cityid,gridid,gridname;

    public CityGrid(String id,String cityid,String gridid,String gridname){
        this.id = id;
        this.cityid = cityid;
        this.gridid = gridid;
        this.gridname = gridname;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCityid() {
        return cityid;
    }

    public void setCityid(String cityid) {
        this.cityid = cityid;
    }

    public String getGridid() {
        return gridid;
    }

    public void setGridid(String gridid) {
        this.gridid = gridid;
    }

    public String getGridname() {
        return gridname;
    }

    public void setGridname(String gridname) {
        this.gridname = gridname;
    }
}

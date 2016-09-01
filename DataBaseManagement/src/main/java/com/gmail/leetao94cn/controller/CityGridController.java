package com.gmail.leetao94cn.controller;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.gmail.leetao94cn.dao.CityGrid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;


/**
 * Created by user on 2016/8/31.
 */

@RestController
public class CityGridController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public  ModelAndView Index() {
        ModelAndView modelAndView = new ModelAndView("index");
        return modelAndView;
    }

    @RequestMapping("/getAllCityGridData")
    public String getAllCityGridData(){
        String res = "";
        List list = jdbcTemplate.queryForList("SELECT id,cityid,gridid,gridname FROM rest LIMIT 10");
        Iterator iterator = list.iterator();
        try{
            ObjectMapper objectMapper = new ObjectMapper();
            while(iterator.hasNext()) {
                res += objectMapper.writeValueAsString(iterator.next())+",";
            }
        }catch (Exception e){
            return e.toString();
        }
        int len = res.length();
        String temp = res.substring(0,len-1);
        return "["+temp+"]";
    }

    @RequestMapping("/getCityGridData/{id}")
    public  String getCityGridData(@PathVariable String id){
        String res = "";
        try{
            ObjectMapper objectMapper = new ObjectMapper();
            res = objectMapper.writeValueAsString(jdbcTemplate.queryForList("SELECT id,cityid,gridid,gridname FROM rest WHERE id=?",id));
        }catch (Exception e){
            return e.toString();
        }
        return "["+res+"]";
    }

    @RequestMapping("/delCityGridData/{id}")
    public boolean delCityGridData(@PathVariable String id) {
        String dsql="DELETE FROM rest WHERE id=?";
        int flag = jdbcTemplate.update(dsql,id);
        if(flag == 1){
            return true;
        }else{
            return false;
        }
    }

    @RequestMapping("/updateCityGridData")
    public boolean updateCityGridData(@ModelAttribute("cityGrid")CityGrid cityGrid) {
        String usql = "UPDATE rest SET cityid=?,gridid=?,gridname=? WHERE id=?";
        int flag = jdbcTemplate.update(usql,cityGrid);
        if(flag == 1){
            return true;
        }else{
            return false;
        }
    }

    @RequestMapping("/insertCityGridData")
    public boolean insertCityGrid(@ModelAttribute("cityGrid") final CityGrid cityGrid) {
        int flag = jdbcTemplate.update("INSERT INTO rest(cityid,gridid,gridname) VALUES(?,?,?)",
                new PreparedStatementSetter(){
                    public void setValues(PreparedStatement preparedStatement) throws SQLException{
                        preparedStatement.setString(1, cityGrid.getCityid());
                        preparedStatement.setString(2, cityGrid.getGridid());
                        preparedStatement.setString(3,cityGrid.getGridname());
                    }
                });
        if(flag == 1){
            return true;
        }else{
            return false;
        }
    }
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.wealth.techupdate.web.entity;

import com.wealth.techupdate.web.entity.Day;
import java.math.BigInteger;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Persistent;

privileged aspect Day_Roo_Mongo_Entity {
    
    declare @type: Day: @Persistent;
    
    @Id
    private BigInteger Day.id;
    
    public BigInteger Day.getId() {
        return this.id;
    }
    
    public void Day.setId(BigInteger id) {
        this.id = id;
    }
    
}
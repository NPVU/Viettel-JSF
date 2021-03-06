/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package npvu.util;

import java.io.IOException;
import java.io.Serializable;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import npvu.constant.Constant;
import npvu.controller.Login;
import npvu.dataprovider.RoleDataProvider;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author npvu
 */
public class RoleUtils implements Serializable{
    
    private static final Logger log = LoggerFactory.getLogger(RoleUtils.class);
    
    private final RoleDataProvider roleProvider = new RoleDataProvider();
    
    private String[] arrRole;
    
    public RoleUtils(){
        
    }
    
    public boolean checkRole(int roleID){        
        if(!Login.logined){            
            return false;
        } else {
            arrRole = Login.roles;
            for(String role : arrRole){
                if(Integer.parseInt(role)==Constant.ROLE_FULL || Integer.parseInt(role)==roleID){
                    return true;
                }
            }
        }                
        return false;
    }
}

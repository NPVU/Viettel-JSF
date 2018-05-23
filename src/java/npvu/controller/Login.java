/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package npvu.controller;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import npvu.constant.FileConstant;
import npvu.constant.MessageConstant;
import npvu.dataprovider.RoleDataProvider;
import npvu.dataprovider.TaiKhoanDataProvider;
import npvu.dataprovider.TapTinDataProvider;
import npvu.model.TaiKhoanModel;
import npvu.model.TapTinModel;
import npvu.session.SessionBean;
import npvu.util.EncryptionUtils;
import npvu.util.ShowGrowlUtils;

/**
 *
 * @author npvu
 */
@ManagedBean (name="Login")
@SessionScoped
public class Login implements Serializable{
    ShowGrowlUtils showGrow = new ShowGrowlUtils();
    
    public static TaiKhoanModel objTaiKhoan;
    public static boolean logined;
    public static String pathAvatar;
    public static TapTinModel objTapTin;
    public static Date thoiGian;
    public static String[] roles;
    
    private String tempTaiKhoan;
    private String tempMatKhau;
    
    private String urlCurrent;
    
    public Login() {

    }
    
    public void preLogin(){
        try {
            // Lấy full url hiện tại
            
            // -- làm sau
            
            ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
            ec.redirect(ec.getRequestContextPath() + "/dang-nhap/");
        } catch (IOException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void login(){
        // Xử lý tên tài khoản
        
        // Lấy tài khoản từ database
        TaiKhoanDataProvider tkProvider     = new TaiKhoanDataProvider();               
        objTaiKhoan                         = tkProvider.getTaiKhoanByTenDangNhap(tempTaiKhoan);                
        if(objTaiKhoan != null){
            if(objTaiKhoan.getMatKhau().equals(EncryptionUtils.encryptMatKhau(tempMatKhau))){
                if(!objTaiKhoan.isHoatdong()){
                    showGrow.showMessageError(MessageConstant.MESSAGE_ACCOUNT_LOCKED);
                    return;
                }
                RoleDataProvider roleProvider       = new RoleDataProvider(); 
                TapTinDataProvider tapTinProvider   = new TapTinDataProvider();
                objTapTin       = tapTinProvider.getTapTin(objTaiKhoan.getTapTinID());
                logined         = true;
                thoiGian        = Calendar.getInstance().getTime();
                roles           = roleProvider.getDanhSachRoleByTaiKhoan(objTaiKhoan.getId());
                tempTaiKhoan    = null;               
                showGrow.showMessageSuccess(MessageConstant.MESSAGE_SUCCESS_LOGIN);
                
                // Kiểm tra ảnh avatar
                if(objTapTin == null){
                    objTapTin = new TapTinModel();
                    objTapTin.setTenLuuTru(FileConstant.FILE_NAME_AVATAR_DEFAULT);
                } else {
                    File avatar = new File(FileConstant.PATH_UPLOAD_AVATAR+objTapTin.getTenLuuTru());
                    if(!avatar.exists()){
                        objTapTin.setTenLuuTru(FileConstant.FILE_NAME_AVATAR_DEFAULT);
                    }
                }
                               
                
                try {
                    ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
                    ec.redirect(ec.getRequestContextPath() + "/");
                } catch (IOException ex) {
                    Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                } 
                
            } else {
                // Sai mật khẩu
                showGrow.showMessageError(MessageConstant.MESSAGE_PASSWORD_FALSE);
            }
        } else {
            // Tài khoản không tồn tại
            showGrow.showMessageError(MessageConstant.MESSAGE_USERNAME_NOT_EXISTS);
        }
        tempMatKhau = null;
    }
    
    public void refreshTaiKhoan(String tenDangNhap){
        TaiKhoanDataProvider tkProvider     = new TaiKhoanDataProvider();  
        TapTinDataProvider tapTinProvider   = new TapTinDataProvider();
        objTaiKhoan                         = tkProvider.getTaiKhoanByTenDangNhap(tenDangNhap);
        if(objTaiKhoan.getTapTinID() != 0){
            objTapTin                       = tapTinProvider.getTapTin(objTaiKhoan.getTapTinID());
        }
    }
    
    public void logout(){
        logined     = false;
        objTaiKhoan = null;
        thoiGian    = null;
        tempMatKhau = null;
        roles       = null;
        SessionBean.resetSession();
        try {            
            ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
            ec.redirect(ec.getRequestContextPath() + "/");
        } catch (IOException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean checkRole(String role) {
        if(roles == null){
            return false;
        }
        return Arrays.asList(roles).contains(role);
    }
    
    /* Getter && Setter */
    
    public boolean isLogined() {
        return logined;
    }

    public Date getThoiGian() {
        return thoiGian;
    }

    public String getTempTaiKhoan() {
        return tempTaiKhoan;
    }

    public void setTempTaiKhoan(String tempTaiKhoan) {
        this.tempTaiKhoan = tempTaiKhoan;
    }

    public String getTempMatKhau() {
        return tempMatKhau;
    }

    public void setTempMatKhau(String tempMatKhau) {
        this.tempMatKhau = tempMatKhau;
    }
    
    public String getPathAvatar() {
        return pathAvatar;
    }
    
    public TapTinModel getObjTapTin() {
        return objTapTin;
    }

    public TaiKhoanModel getObjTaiKhoan() {
        return objTaiKhoan;
    }

    public void setObjTaiKhoan(TaiKhoanModel objTaiKhoan) {
        this.objTaiKhoan = objTaiKhoan;
    }
}

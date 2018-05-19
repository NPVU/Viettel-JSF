/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package npvu.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import npvu.constant.Constant;
import npvu.constant.FileConstant;
import npvu.constant.MessageConstant;
import npvu.dataprovider.BaiVietDataProvider;
import npvu.model.BaiVietModel;
import npvu.session.SessionBean;
import npvu.util.DateUtils;
import npvu.util.RoleUtils;
import npvu.util.ShowGrowlUtils;
import npvu.util.ValidateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author npvu
 */
@ManagedBean (name = "BaiVietController")
@ViewScoped
public class BaiVietController implements Serializable{
    private static final Logger log = LoggerFactory.getLogger(BaiVietController.class);
    
    @ManagedProperty(value="#{UI_UploadFileController}")
    private UI_UploadFileController uiUploadFile;
    
    private UIComponent uicTieuDe;
    
    private final BaiVietDataProvider bvProvider    = new BaiVietDataProvider();
    
    private final ShowGrowlUtils showGrowl          = new ShowGrowlUtils();
    
    private final RoleUtils roleUtils               = new RoleUtils();
    
    private final ValidateUtils valiUtils           = new ValidateUtils();
    
    private List<Map> dsBaiViet                     = new ArrayList();
    
    private BaiVietModel objBaiViet;
    
    private boolean hienThiTrangChu;
    
    private boolean editMode;
    
    private int viewMode;                                             // 0 là form danh sách, 1 là form cập nhật
    
    private int tabIndex                            = 0;
    
    private int dmIDFilter;
    
    private String tieuDeFilter;
    
    private int xuatBanFilter                       = -1;
    
    private Date taoTuNgayFilter;
    
    private Date taoDenNgayFilter;
    
    private Date xuatBanTuNgayFilter;
    
    private Date xuatBanDenNgayFilter;
    
    public BaiVietController() {
        if (roleUtils.checkRole(Constant.ROLE_ADMIN_BAIVIET)) {
            ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
            String strBvID = Arrays.toString(ec.getRequestParameterValuesMap().get("id"));
            if (strBvID.equals("null")) {
                actionGetDanhSachBaiViet();
                viewMode = 0;
            } else {
                long baiVietID = Long.parseLong(strBvID.substring(1, strBvID.length() - 1));
                objBaiViet = bvProvider.getBaiVietByID(baiVietID);
            }
        } else {
            viewMode = Constant.CODE_ERROR_500;
        }
    }
    
    private void actionGetDanhSachBaiViet(){
        dsBaiViet = bvProvider.getDanhSachBaiViet(0, null, -1, null, null);
    }
    
    public void actionGetDanhSachBaiVietFilter(){
        dsBaiViet = bvProvider.getDanhSachBaiViet(dmIDFilter, tieuDeFilter, xuatBanFilter,
                taoTuNgayFilter, taoDenNgayFilter);
    }
    
    public void preActionThemBaiViet(){
        objBaiViet = new BaiVietModel();
        viewMode = 1;
        hienThiTrangChu = false;
        editMode = false;
        tabIndex = 0;
    }
    
    public void preActionEditBaiViet(long baiVietID){
        objBaiViet = new BaiVietModel();
        objBaiViet = bvProvider.getBaiVietByID(baiVietID);
        viewMode = 1;
        editMode = true;
        hienThiTrangChu = objBaiViet.getHienThiTrangChu()==1;
        tabIndex = 0;
    }
    
    public void actionUpdateBaiViet(){
        if(actionVaildForm()){
            if(!editMode){ // Thêm mới
                objBaiViet.setNgayTao(DateUtils.getCurrentDate());
                objBaiViet.setTacGia(Login.objTaiKhoan.getTenHienThi());
                if(objBaiViet.isXuatBan()){
                    objBaiViet.setNgayXuatBan(DateUtils.getCurrentDate());
                }
            } else { // Chỉnh sửa
                if(objBaiViet.isXuatBan() && objBaiViet.getNgayXuatBan() == null){
                    objBaiViet.setNgayXuatBan(DateUtils.getCurrentDate());
                }
            }            
            long tapTinID;
            if(SessionBean.statusUpload != null && SessionBean.statusUpload == true){
                    tapTinID = uiUploadFile.actionUpdateTapTin(FileConstant.PATH_UPLOAD_IMAGE);
                    objBaiViet.setTapTinID(tapTinID);
            }
            if(hienThiTrangChu){
                objBaiViet.setHienThiTrangChu(1);
            } else {
                objBaiViet.setHienThiTrangChu(0);
            }
            if(bvProvider.updateBaiViet(objBaiViet)){
                showGrowl.showMessageSuccess(MessageConstant.MESSAGE_SUCCESS_UPDATE);
            } else{
                showGrowl.showMessageFatal(MessageConstant.MESSAGE_ERROR_UPDATE);
            }
        } else {
            return;
        }
        UI_UploadFileController.resetValueFileToSession();
        actionGetDanhSachBaiViet();
        editMode = false;
        viewMode = 0;
    }
    
    public boolean actionVaildForm(){
        boolean vaild = true;
        if(objBaiViet.getTieuDe() == null || objBaiViet.getTieuDe().isEmpty()){
            showGrowl.showMessageError("Vui lòng nhập tiêu đề bài viết", uicTieuDe);
            vaild = false;
        }
        if(!vaild){
            tabIndex = 0;
        }
        return vaild;
    }
            
    public void actionSelectBaiViet(long baiVietID){
        objBaiViet = bvProvider.getBaiVietByID(baiVietID);
    }
    
    public void actionDeleteBaiViet(BaiVietModel baiViet){
        if(bvProvider.deleteBaiViet(objBaiViet)){
            showGrowl.showMessageSuccess("Xóa bài viết \""+baiViet.getTieuDe()+"\" thành công !");
        } else {
            showGrowl.showMessageFatal("Xóa bài viết \""+baiViet.getTieuDe()+"\" thất bại !");
        }
        actionGetDanhSachBaiViet();
    }
    
    public void actionChangeViewMode(int viewMode){
        this.viewMode = viewMode;
    }
    
    public int getViewMode() {
        return viewMode;
    }

    public void setViewMode(int viewMode) {
        this.viewMode = viewMode;
    }

    public boolean isEditMode() {
        return editMode;
    }

    public void setEditMode(boolean editMode) {
        this.editMode = editMode;
    }

    public int getDmIDFilter() {
        return dmIDFilter;
    }

    public void setDmIDFilter(int dmIDFilter) {
        this.dmIDFilter = dmIDFilter;
    }

    public String getTieuDeFilter() {
        return tieuDeFilter;
    }

    public void setTieuDeFilter(String tieuDeFilter) {
        this.tieuDeFilter = tieuDeFilter;
    }

    public Date getTaoTuNgayFilter() {
        return taoTuNgayFilter;
    }

    public void setTaoTuNgayFilter(Date taoTuNgayFilter) {
        this.taoTuNgayFilter = taoTuNgayFilter;
    }

    public Date getTaoDenNgayFilter() {
        return taoDenNgayFilter;
    }

    public void setTaoDenNgayFilter(Date taoDenNgayFilter) {
        this.taoDenNgayFilter = taoDenNgayFilter;
    }

    public Date getXuatBanTuNgayFilter() {
        return xuatBanTuNgayFilter;
    }

    public void setXuatBanTuNgayFilter(Date xuatBanTuNgayFilter) {
        this.xuatBanTuNgayFilter = xuatBanTuNgayFilter;
    }

    public Date getXuatBanDenNgayFilter() {
        return xuatBanDenNgayFilter;
    }

    public void setXuatBanDenNgayFilter(Date xuatBanDenNgayFilter) {
        this.xuatBanDenNgayFilter = xuatBanDenNgayFilter;
    }

    public BaiVietModel getObjBaiViet() {
        return objBaiViet;
    }

    public void setObjBaiViet(BaiVietModel objBaiViet) {
        this.objBaiViet = objBaiViet;
    }

    public UIComponent getUicTieuDe() {
        return uicTieuDe;
    }

    public void setUicTieuDe(UIComponent uicTieuDe) {
        this.uicTieuDe = uicTieuDe;
    }

    public UI_UploadFileController getUiUploadFile() {
        return uiUploadFile;
    }

    public void setUiUploadFile(UI_UploadFileController uiUploadFile) {
        this.uiUploadFile = uiUploadFile;
    }

    public List<Map> getDsBaiViet() {
        return dsBaiViet;
    }

    public void setDsBaiViet(List<Map> dsBaiViet) {
        this.dsBaiViet = dsBaiViet;
    }

    public int getTabIndex() {
        return tabIndex;
    }

    public void setTabIndex(int tabIndex) {
        this.tabIndex = tabIndex;
    }

    public int getXuatBanFilter() {
        return xuatBanFilter;
    }

    public void setXuatBanFilter(int xuatBanFilter) {
        this.xuatBanFilter = xuatBanFilter;
    }

    public boolean isHienThiTrangChu() {
        return hienThiTrangChu;
    }

    public void setHienThiTrangChu(boolean hienThiTrangChu) {
        this.hienThiTrangChu = hienThiTrangChu;
    }
    
}

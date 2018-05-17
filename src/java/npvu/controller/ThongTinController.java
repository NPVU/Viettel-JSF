/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package npvu.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import npvu.dataprovider.BaiVietDataProvider;
import npvu.model.BaiVietModel;
import npvu.model.DanhMucBaiVietModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author b1203
 */
@ManagedBean(name = "ThongTinController")
@ViewScoped
public class ThongTinController implements Serializable{
    
    private static final Logger log = LoggerFactory.getLogger(ThongTinController.class);

    private List<DanhMucBaiVietModel> dsDMBaiViet   = new ArrayList<>();
    
    private final BaiVietDataProvider bvProvider    = new BaiVietDataProvider();
    
    private BaiVietModel objBaiViet;
    
    /**
     * Creates a new instance of ThongTinController
     */
    public ThongTinController() {
        actionGetDanhSachDanhMucBaiViet();
        actionGetBaiVietMoiNhat(1);
    }

    private void actionGetDanhSachDanhMucBaiViet(){
        dsDMBaiViet = bvProvider.getDanhSachDanhMucBaiViet(null, -1);
    }
    
    private void actionGetBaiVietMoiNhat(int danhMucID){
        objBaiViet = bvProvider.getBaiVietMoiNhatByDanhMucID(danhMucID);
    }
    
    /* Getter && Setter */
    
    public List<DanhMucBaiVietModel> getDsDMBaiViet() {
        return dsDMBaiViet;
    }

    public void setDsDMBaiViet(List<DanhMucBaiVietModel> dsDMBaiViet) {
        this.dsDMBaiViet = dsDMBaiViet;
    }

    public BaiVietModel getObjBaiViet() {
        return objBaiViet;
    }

    public void setObjBaiViet(BaiVietModel objBaiViet) {
        this.objBaiViet = objBaiViet;
    }
    
}

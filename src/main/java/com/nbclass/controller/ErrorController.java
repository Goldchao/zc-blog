package com.nbclass.controller;

import com.nbclass.model.BizCategory;
import com.nbclass.service.BizCategoryService;
import com.nbclass.service.SysConfigService;
import com.nbclass.util.CoreConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * @version V1.0
 * @date 2018年7月11日
 * @author superzheng
 */
@Controller
@RequestMapping("/error")
public class ErrorController {
    @Autowired
    private SysConfigService sysConfigService;
    @Autowired
    private BizCategoryService bizCategoryService;
    /*shiro无权限时进入*/
    @RequestMapping("/403")
    public String noPermission(HttpServletRequest request, HttpServletResponse response,Model model){
        getSysConfig(model);
        response.setStatus(HttpStatus.FORBIDDEN.value());
        return "error/403";
    }
    @RequestMapping("/404")
    public String notFund(HttpServletRequest request, HttpServletResponse response,Model model){
        getSysConfig(model);
        return "error/404";
    }

    @RequestMapping("/500")
    public String sysError(HttpServletRequest request, HttpServletResponse response,Model model){
        getSysConfig(model);
        return "error/500";
    }

    private void getSysConfig(Model model){
        Map<String, String> map = sysConfigService.selectAll();
        model.addAttribute("sysConfig",map);
        BizCategory bizCategory = new BizCategory();
        bizCategory.setStatus(CoreConst.STATUS_VALID);
        model.addAttribute("categoryList", bizCategoryService.selectCategories(bizCategory));
    }
}

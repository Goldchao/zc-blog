package com.nbclass.controller;

import com.nbclass.model.BizCategory;
import com.nbclass.service.BizCategoryService;
import com.nbclass.service.SysConfigService;
import com.nbclass.util.CoreConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

/**
 * @version V1.0
 * @date 2018年7月24日
 * @author superzheng
 */
@Controller
public class AdminRenderController {
    @Autowired
    private BizCategoryService categoryService;
    @Autowired
    private SysConfigService sysConfigService;
    /*网站基本信息*/
    @GetMapping("/siteinfo")
    public String siteinfo(Model model){
        Map<String, String> map = sysConfigService.selectAll();
        model.addAttribute("siteinfo", map);
        return "site/siteinfo";
    }
    /*友情链接*/
    @GetMapping("/links")
    public String links(){
        return "link/list";
    }
    /*分类*/
    @GetMapping("/categories")
    public String categories(){
        return "category/list";
    }
    /*标签*/
    @GetMapping("/tags")
    public String tags(){
        return "tag/list";
    }

    /*文章*/
    @GetMapping("/articles")
    public String articles(Model model){
        BizCategory bizCategory = new BizCategory();
        bizCategory.setStatus(CoreConst.STATUS_VALID);
        List<BizCategory> categories = categoryService.select(bizCategory);
        model.addAttribute("categories",categories);
        return "article/list";
    }
    /*评论*/
    @GetMapping("/comments")
    public String comments(){
        return "comment/list";
    }

    @GetMapping("themes")
    public String themes(){
        return "systheme/list";
    }

}

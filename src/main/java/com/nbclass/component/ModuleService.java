package com.nbclass.component;

import com.nbclass.model.BizCategory;
import com.nbclass.model.BizLink;
import com.nbclass.model.BizTags;
import com.nbclass.service.*;
import com.nbclass.util.CoreConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * js调用 thymeleaf 实现按钮权限
 * @version V1.0
 * @date 2018年7月11日
 * @author superzheng
 */
@Component("module")
public class ModuleService {
    @Autowired
    private BizCategoryService bizCategoryService;
    @Autowired
    private BizArticleService bizArticleService;
    @Autowired
    private BizTagsService bizTagsService;
    @Autowired
    private BizLinkService bizLinkService;
    @Autowired
    private BizSiteInfoService siteInfoService;
    @Autowired
    private SysConfigService sysConfigService;

    public Object get(String moduleName){
        switch (moduleName){
            case "categoryList"://分类
                BizCategory bizCategory = new BizCategory();
                bizCategory.setStatus(CoreConst.STATUS_VALID);
                return bizCategoryService.selectCategories(bizCategory);
            case "tagList":             //标签
                return bizTagsService.selectTags(new BizTags());
            case "sliderList":          //轮播文章
                return bizArticleService.sliderList();
            case "recentList":          //最近文章
                return bizArticleService.recentList(CoreConst.PAGE_SIZE);
            case "recommendedList":    //推荐文章
                return bizArticleService.recommendedList(CoreConst.PAGE_SIZE);
            case "hotList":             //热门文章
                return bizArticleService.hotList(CoreConst.PAGE_SIZE);
            case "randomList":          //随机文章
                return bizArticleService.randomList(CoreConst.PAGE_SIZE);
            case "linkList":            //友链
                BizLink bizLink = new BizLink();
                bizLink.setStatus(CoreConst.STATUS_VALID);
                return bizLinkService.selectLinks(bizLink);
            case "siteInfo":            //网站信息统计
                return siteInfoService.getSiteInfo();
            case "sysConfig":           //网站基本信息配置
                return sysConfigService.selectAll();
            default:
                return null;
        }
    }
}

package com.nbclass.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nbclass.exception.ArticleNotFoundException;
import com.nbclass.model.*;
import com.nbclass.service.*;
import com.nbclass.util.CopyUtil;
import com.nbclass.util.CoreConst;
import com.nbclass.vo.ArticleConditionVo;
import com.nbclass.vo.base.PageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class BlogWebController {
    private static final String THEME_PREFIX = "theme/";
    @Autowired
    private BizArticleService bizArticleService;
    @Autowired
    private BizThemeService bizThemeService;
    @GetMapping("/")
    public String index(Model model, ArticleConditionVo vo){
        model.addAttribute("pageUrl","blog/index");
        model.addAttribute("categoryId","index");
        model.addAttribute("sliderList",bizArticleService.sliderList());//轮播文章
        loadMainPage(model,vo);
        return THEME_PREFIX + bizThemeService.selectCurrent().getName()+ "/index";
    }
    @RequestMapping("/blog/index/{pageNumber}")
    public String index(@PathVariable("pageNumber") Integer pageNumber, ArticleConditionVo vo, Model model) {
        vo.setPageNumber(pageNumber);
        model.addAttribute("pageUrl","blog/index");
        model.addAttribute("categoryId","index");
        loadMainPage(model, vo);
        return THEME_PREFIX + bizThemeService.selectCurrent().getName()+ "/index";
    }
    /**
     * 分类列表
     *
     * @param categoryId
     * @param model
     * @return
     */
    @GetMapping("/blog/category/{categoryId}")
    public String category(@PathVariable("categoryId") Integer categoryId, Model model) {
        ArticleConditionVo vo = new ArticleConditionVo();
        vo.setCategoryId(categoryId);
        model.addAttribute("pageUrl", "blog/category/" + categoryId);
        model.addAttribute("categoryId",categoryId);
        loadMainPage(model, vo);
        return THEME_PREFIX + bizThemeService.selectCurrent().getName()+ "/index";
    }
    @GetMapping("/blog/category/{categoryId}/{pageNumber}")
    public String category(@PathVariable("categoryId") Integer categoryId, @PathVariable("pageNumber") Integer pageNumber, Model model) {
        ArticleConditionVo vo = new ArticleConditionVo();
        vo.setCategoryId(categoryId);
        vo.setPageNumber(pageNumber);
        model.addAttribute("pageUrl", "blog/category/" + categoryId);
        model.addAttribute("categoryId",categoryId);
        loadMainPage(model, vo);
        return THEME_PREFIX + bizThemeService.selectCurrent().getName()+ "/index";
    }


    /**
     * 标签列表
     *
     * @param tagId
     * @param model
     * @return
     */
    @GetMapping("/blog/tag/{tagId}")
    public String tag(@PathVariable("tagId") Integer tagId, Model model) {
        ArticleConditionVo vo = new ArticleConditionVo();
        vo.setTagId(tagId);
        model.addAttribute("pageUrl", "blog/tag/" + tagId);
        loadMainPage(model,vo);
        return THEME_PREFIX + bizThemeService.selectCurrent().getName()+ "/index";
    }

    /**
     * 标签列表（分页）
     *
     * @param tagId
     * @param pageNumber
     * @param model
     * @return
     */
    @GetMapping("/blog/tag/{tagId}/{pageNumber}")
    public String tag(@PathVariable("tagId") Integer tagId, @PathVariable("pageNumber") Integer pageNumber, Model model) {
        ArticleConditionVo vo = new ArticleConditionVo();
        vo.setTagId(tagId);
        vo.setPageNumber(pageNumber);
        model.addAttribute("pageUrl", "blog/tag/" + tagId);
        loadMainPage(model,vo);
        return THEME_PREFIX + bizThemeService.selectCurrent().getName()+ "/index";
    }

    /**
     * 文章详情
     *
     * @param model
     * @param articleId
     * @return
     */
    @GetMapping("/blog/article/{articleId}")
    public String article(HttpServletRequest request,Model model, @PathVariable("articleId") Integer articleId) {
        BizArticle article = bizArticleService.selectById(articleId);
        if (article == null || CoreConst.STATUS_INVALID.equals(article.getStatus()) ) {
            throw new ArticleNotFoundException();
        }
        model.addAttribute("article", article);
        model.addAttribute("categoryId",article.getCategoryId());
        return THEME_PREFIX + bizThemeService.selectCurrent().getName()+ "/article";
    }

    /**
     * 文章详情
     *
     * @param model
     * @return
     */
    @GetMapping("/blog/comment")
    public String comment(Model model) {
        model.addAttribute("categoryId","comment");
        return THEME_PREFIX + bizThemeService.selectCurrent().getName()+ "/comment";
    }

    private void loadMainPage(Model model, ArticleConditionVo vo) {
        vo.setStatus(CoreConst.STATUS_VALID);
        PageHelper.startPage(vo.getPageNumber(), vo.getPageSize());
        List<BizArticle> articleList =  bizArticleService.findByCondition(vo);
        PageInfo<BizArticle> pageInfo = new PageInfo<>(articleList);
        PageVo pageVo = CopyUtil.getCopy(pageInfo,PageVo.class);
        model.addAttribute("page",JSONObject.toJSON(pageVo));
        model.addAttribute("articleList",articleList);//文章列表
    }

}

package com.nbclass.controller;

import com.nbclass.model.BizArticle;
import com.nbclass.model.BizCategory;
import com.nbclass.service.BizArticleService;
import com.nbclass.service.BizCategoryService;
import com.nbclass.util.CoreConst;
import com.nbclass.util.ResultUtil;
import com.nbclass.vo.base.ResponseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.thymeleaf.util.ListUtils;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("category")
public class CategoryController {
    @Autowired
    private BizCategoryService categoryService;
    @Autowired
    private BizArticleService articleService;

    @PostMapping("list")
    @ResponseBody
    public List<BizCategory> loadCategory(boolean isFistLevel){
        BizCategory bizCategory = new BizCategory();
        bizCategory.setStatus(CoreConst.STATUS_VALID);
        if(isFistLevel){
            bizCategory.setPid(CoreConst.TOP_MENU_ID);
        }
        List<BizCategory> categoryList= categoryService.selectCategories(bizCategory);
        return categoryList;
    }
    @PostMapping("/add")
    @ResponseBody
    public ResponseVo add(BizCategory bizCategory){
        if(!bizCategory.getPid().equals(CoreConst.TOP_MENU_ID)){
            List<BizArticle> bizArticles = articleService.selectByCategoryId(bizCategory.getPid());
            if(!ListUtils.isEmpty(bizArticles)){
                return ResultUtil.error("添加失败，父级分类下存在文章");
            }
        }
        Date date = new Date();
        bizCategory.setCreateTime(date);
        bizCategory.setUpdateTime(date);
        bizCategory.setStatus(CoreConst.STATUS_VALID);
        int i = categoryService.insert(bizCategory);
        if(i>0){
            return ResultUtil.success("新增分类成功");
        }else{
            return ResultUtil.error("新增分类失败");
        }
    }

    @GetMapping("/edit")
    public String edit(Model model, Integer id){
        BizCategory bizCategory = categoryService.selectById(id);
        model.addAttribute("category", bizCategory);
        return "category/detail";
    }

    @PostMapping("/edit")
    @ResponseBody
    public ResponseVo edit(BizCategory bizCategory){
        bizCategory.setUpdateTime(new Date());
        int i = categoryService.updateNotNull(bizCategory);
        if(i>0){
            return ResultUtil.success("编辑分类成功");
        }else{
            return ResultUtil.error("编辑分类失败");
        }
    }
    @PostMapping("/delete")
    @ResponseBody
    public ResponseVo delete(Integer id){
        if(categoryService.selectByPid(id).size()>0){
            return ResultUtil.error("该分类下存在子分类！");
        }
        int i = categoryService.delete(id);
        if(i>0){
            return ResultUtil.success("删除分类成功");
        }else{
            return ResultUtil.error("删除分类失败");
        }
    }
    @PostMapping("/batch/delete")
    @ResponseBody
    public ResponseVo deleteBatch(@RequestParam("ids[]") Integer[]ids){
        int i = categoryService.deleteBatch(ids);
        if(i>0){
            return ResultUtil.success("删除分类成功");
        }else{
            return ResultUtil.error("删除分类失败");
        }
    }

}

package com.nbclass.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nbclass.model.BizTheme;
import com.nbclass.service.BizThemeService;
import com.nbclass.util.CoreConst;
import com.nbclass.util.PageUtil;
import com.nbclass.util.ResultUtil;
import com.nbclass.vo.base.PageResultVo;
import com.nbclass.vo.base.ResponseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("theme")
public class ThemeController {
    @Autowired
    private BizThemeService bizThemeService;
    @PostMapping("list")
    @ResponseBody
    public PageResultVo loadTheme(Integer limit, Integer offset){
        PageHelper.startPage(PageUtil.getPageNo(limit, offset),limit);
        List<BizTheme> themes = bizThemeService.selectAll();
        PageInfo<BizTheme> pages = new PageInfo<>(themes);
        return ResultUtil.table(themes,pages.getTotal());
    }
    @PostMapping("/add")
    @ResponseBody
    public ResponseVo add(BizTheme bizTheme){
        Date date = new Date();
        bizTheme.setCreateTime(date);
        bizTheme.setUpdateTime(date);
        bizTheme.setStatus(CoreConst.STATUS_INVALID);
        int i = bizThemeService.insert(bizTheme);
        if(i>0){
            return ResultUtil.success("新增主题成功");
        }else{
            return ResultUtil.error("新增主题失败");
        }
    }

    @GetMapping("/edit")
    public String edit(Model model, Integer id){
        BizTheme bizTheme = bizThemeService.selectByPrimaryKey(id);
        model.addAttribute("theme",bizTheme);
        return "systheme/detail";
    }

    @PostMapping("/edit")
    @ResponseBody
    public ResponseVo edit(BizTheme bizTheme){
        bizTheme.setUpdateTime(new Date());
        int i = bizThemeService.updateNotNull(bizTheme);
        if(i>0){
            return ResultUtil.success("编辑主题成功");
        }else{
            return ResultUtil.error("编辑主题失败");
        }
    }

    @PostMapping("/use")
    @ResponseBody
    public ResponseVo use(Integer id){
        int i = bizThemeService.useTheme(id);
        if(i>0){
            return ResultUtil.success("启用主题成功");
        }else{
            return ResultUtil.error("启用主题失败");
        }
    }

    @PostMapping("/delete")
    @ResponseBody
    public ResponseVo delete(Integer id){
        int i = bizThemeService.delete(id);
        if(i>0){
            return ResultUtil.success("删除主题成功");
        }else{
            return ResultUtil.error("删除主题失败");
        }
    }
    @PostMapping("/batch/delete")
    @ResponseBody
    public ResponseVo deleteBatch(@RequestParam("ids[]") Integer[]ids){
        int i = bizThemeService.deleteBatch(ids);
        if(i>0){
            return ResultUtil.success("删除主题成功");
        }else{
            return ResultUtil.error("删除主题失败");
        }
    }

}

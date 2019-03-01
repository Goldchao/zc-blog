package com.nbclass.service.impl;

import com.nbclass.annotation.RedisCache;
import com.nbclass.mapper.BizThemeMapper;
import com.nbclass.model.BizTheme;
import com.nbclass.service.BizThemeService;
import com.nbclass.util.CoreConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BizThemeServiceImpl extends BaseServiceImpl<BizTheme> implements BizThemeService {

    @Autowired
    private BizThemeMapper themeMapper;
    @Override
    @RedisCache(flush = true)
    public int useTheme(Integer id) {
        themeMapper.setInvaid();
        return themeMapper.updateStatusById(id);
    }

    @Override
    @RedisCache
    public BizTheme selectCurrent() {
        BizTheme bizTheme = new BizTheme();
        bizTheme.setStatus(CoreConst.STATUS_VALID);
        return themeMapper.selectOne(bizTheme);
    }

    @Override
    public int deleteBatch(Integer[] ids) {
        return themeMapper.deleteBatch(ids);
    }
}

package com.nbclass.mapper;

import com.nbclass.model.BizTheme;
import com.nbclass.util.MyMapper;

import java.util.List;

public interface BizThemeMapper extends MyMapper<BizTheme> {
    int setInvaid();
    int updateStatusById(Integer id);
    int deleteBatch(Integer[] ids);
}
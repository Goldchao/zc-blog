package com.nbclass.mapper;

import com.nbclass.model.BizCategory;
import com.nbclass.util.MyMapper;

import java.util.List;

public interface BizCategoryMapper extends MyMapper<BizCategory> {

    List<BizCategory> selectCategories(BizCategory bizCategory);

    int deleteBatch(Integer[] ids);

    BizCategory selectById(Integer id);
}

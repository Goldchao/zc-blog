package com.nbclass.service;

import com.nbclass.model.BizTheme;

public interface BizThemeService  extends BaseService<BizTheme>  {
    int useTheme(Integer id);

    BizTheme selectCurrent();

    int deleteBatch(Integer[]ids);

}

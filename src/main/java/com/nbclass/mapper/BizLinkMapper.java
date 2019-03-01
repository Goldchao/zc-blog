package com.nbclass.mapper;

import com.nbclass.model.BizLink;
import com.nbclass.util.MyMapper;

import java.util.List;

public interface BizLinkMapper extends MyMapper<BizLink> {

    List<BizLink> selectLinks(BizLink bizLink);

    int deleteBatch(Integer[] ids);

}

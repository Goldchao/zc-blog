package com.nbclass.service;

import com.nbclass.model.BizLink;

import java.util.List;

public interface BizLinkService extends BaseService<BizLink> {
    List<BizLink> selectLinks(BizLink bizLink);

    int deleteBatch(Integer[]ids);

}

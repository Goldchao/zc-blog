package com.nbclass.service;

import com.nbclass.model.BizArticleLook;

import java.util.Date;

public interface BizArticleLookService extends BaseService<BizArticleLook> {
    int checkArticleLook( Integer articleId, String userIp, Date lookTime);
}

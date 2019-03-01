package com.nbclass.service.impl;

import com.nbclass.mapper.BizArticleLookMapper;
import com.nbclass.model.BizArticleLook;
import com.nbclass.service.BizArticleLookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class BizArticleLookServiceImpl extends BaseServiceImpl<BizArticleLook> implements BizArticleLookService {
    @Autowired
    private BizArticleLookMapper articleLookMapper;
    @Override
    public int checkArticleLook(Integer articleId, String userIp, Date lookTime) {
        return articleLookMapper.checkArticleLook(articleId,userIp,lookTime);
    }
}

package com.nbclass.service.impl;

import com.nbclass.mapper.BizLoveMapper;
import com.nbclass.model.BizLove;
import com.nbclass.service.BizLoveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018-9-4.
 */
@Service
public class BizLoveServiceImpl extends BaseServiceImpl<BizLove> implements BizLoveService {
    @Autowired
    private BizLoveMapper loveMapper;
    @Override
    public BizLove checkLove(Integer bizId, String userIp) {
        return loveMapper.checkLove(bizId,userIp);
    }
}

package com.nbclass.service;

import com.nbclass.model.BizLove;

/**
 * Created by Administrator on 2018-9-4.
 */
public interface BizLoveService extends BaseService<BizLove> {
    BizLove checkLove(Integer bizId,String userIp);
}

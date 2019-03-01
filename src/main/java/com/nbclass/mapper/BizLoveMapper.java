package com.nbclass.mapper;

import com.nbclass.model.BizLove;
import com.nbclass.util.MyMapper;
import org.apache.ibatis.annotations.Param;

public interface BizLoveMapper extends MyMapper<BizLove> {
    BizLove checkLove(@Param("bizId")Integer bizId,@Param("userIp")String userIp);
}

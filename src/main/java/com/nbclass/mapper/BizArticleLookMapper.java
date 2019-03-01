package com.nbclass.mapper;

import com.nbclass.model.BizArticleLook;
import com.nbclass.util.MyMapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.Map;

public interface BizArticleLookMapper extends MyMapper<BizArticleLook> {

    int checkArticleLook(@Param("articleId") Integer articleId, @Param("userIp") String userIp, @Param("lookTime") Date lookTime);
}

package com.nbclass.mapper;

import com.nbclass.model.BizTags;
import com.nbclass.util.MyMapper;

import java.util.List;

public interface BizTagsMapper extends MyMapper<BizTags> {

    List<BizTags> selectTags(BizTags bizTags);

    int deleteBatch(Integer[] ids);
}

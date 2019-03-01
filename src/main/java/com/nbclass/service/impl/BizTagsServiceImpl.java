package com.nbclass.service.impl;

import com.nbclass.mapper.BizTagsMapper;
import com.nbclass.model.BizTags;
import com.nbclass.service.BizTagsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BizTagsServiceImpl extends BaseServiceImpl<BizTags> implements BizTagsService {

    @Autowired
    private BizTagsMapper bizTagsMapper;

    @Override
    public List<BizTags> selectTags(BizTags bizTags) {
        return bizTagsMapper.selectTags(bizTags);
    }

    @Override
    public int deleteBatch(Integer[] ids) {
        return bizTagsMapper.deleteBatch(ids);
    }
}

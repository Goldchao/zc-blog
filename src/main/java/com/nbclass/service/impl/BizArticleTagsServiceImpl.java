package com.nbclass.service.impl;

import com.nbclass.mapper.BizArticleTagsMapper;
import com.nbclass.model.BizArticleTags;
import com.nbclass.service.BizArticleTagsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class BizArticleTagsServiceImpl extends BaseServiceImpl<BizArticleTags> implements BizArticleTagsService {
    @Autowired
    private BizArticleTagsMapper bizArticleTagsMapper;
    @Override
    public int removeByArticleId(Integer articleId) {
        Example example = new Example(BizArticleTags.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("articleId", articleId);
        return bizArticleTagsMapper.deleteByExample(example);
    }

    @Override
    public void insertList(Integer[] tagIds, Integer articleId) {
        Date date = new Date();
        List<BizArticleTags> articleTagses = new ArrayList<>();
        for(Integer tagId : tagIds){
            BizArticleTags articleTags = new BizArticleTags();
            articleTags.setTagId(tagId);
            articleTags.setArticleId(articleId);
            articleTags.setCreateTime(date);
            articleTags.setUpdateTime(date);
            bizArticleTagsMapper.insert(articleTags);
        }
    }
}

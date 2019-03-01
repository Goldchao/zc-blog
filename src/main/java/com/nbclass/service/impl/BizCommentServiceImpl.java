package com.nbclass.service.impl;

import com.nbclass.mapper.BizCommentMapper;
import com.nbclass.model.BizComment;
import com.nbclass.service.BizCommentService;
import com.nbclass.vo.CommentConditionVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BizCommentServiceImpl extends BaseServiceImpl<BizComment> implements BizCommentService {
    @Autowired
    private BizCommentMapper commentMapper;
    @Override
    public List<BizComment> selectComments(CommentConditionVo vo) {
        return commentMapper.selectComments(vo);
    }

    @Override
    public int deleteBatch(Integer[] ids) {
        return commentMapper.deleteBatch(ids);
    }
}

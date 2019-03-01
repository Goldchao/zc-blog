package com.nbclass.service;

import com.nbclass.model.BizComment;
import com.nbclass.vo.CommentConditionVo;

import java.util.List;

public interface BizCommentService extends BaseService<BizComment> {
    List<BizComment> selectComments(CommentConditionVo vo);

    int deleteBatch(Integer[]ids);

}

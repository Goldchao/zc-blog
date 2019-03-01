package com.nbclass.model;

import com.nbclass.vo.base.BaseVo;

import java.util.Date;

public class BizArticleLook extends BaseVo {
    private Integer articleId;
    private String userId;
    private String userIp;
    private Date lookTime;

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserIp() {
        return userIp;
    }

    public void setUserIp(String userIp) {
        this.userIp = userIp;
    }

    public Date getLookTime() {
        return lookTime;
    }

    public void setLookTime(Date lookTime) {
        this.lookTime = lookTime;
    }
}

package com.nbclass.model;

import com.nbclass.vo.base.BaseVo;

/**
 * @version V1.0
 * @date 2018年7月11日
 * @author superzheng
 */
public class BizTags extends BaseVo {
    private String name;
    private String description;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

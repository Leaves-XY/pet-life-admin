package com.ruoyi.adopt.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 举报信息对象 complaint
 * 
 * @author lian
 * @date 2023-05-21
 */
public class Complaint extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 举报内容 */
    @Excel(name = "举报内容")
    private String content;

    /** 手机号/微信号 */
    @Excel(name = "手机号/微信号")
    private String wechat;

    /** 类型（1-领养人、2-送养人） */
    @Excel(name = "类型", readConverterExp = "1=-领养人、2-送养人")
    private String type;

    /** 性别（1-男、2-女、3-未知） */
    @Excel(name = "性别", readConverterExp = "1=-男、2-女、3-未知")
    private String sex;

    /** 所在城市 */
    @Excel(name = "所在城市")
    private String city;

    /** 具体地址 */
    @Excel(name = "具体地址")
    private String address;

    /** 图片 */
    @Excel(name = "图片")
    private String images;

    /** 用户ID */
    @Excel(name = "用户ID")
    private String userId;

    /** 状态（1-审核中、2-已通过、3-未通过） */
    @Excel(name = "状态", readConverterExp = "1=-审核中、2-已通过、3-未通过")
    private String status;

    /** 0-正常 1-删除 */
    private String isDeleted;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setWechat(String wechat) 
    {
        this.wechat = wechat;
    }

    public String getWechat() 
    {
        return wechat;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getCity() 
    {
        return city;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setImages(String images) 
    {
        this.images = images;
    }

    public String getImages() 
    {
        return images;
    }
    public void setUserId(String userId) 
    {
        this.userId = userId;
    }

    public String getUserId() 
    {
        return userId;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setIsDeleted(String isDeleted) 
    {
        this.isDeleted = isDeleted;
    }

    public String getIsDeleted() 
    {
        return isDeleted;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("content", getContent())
            .append("wechat", getWechat())
            .append("type", getType())
            .append("sex", getSex())
            .append("city", getCity())
            .append("address", getAddress())
            .append("images", getImages())
            .append("userId", getUserId())
            .append("status", getStatus())
            .append("isDeleted", getIsDeleted())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}

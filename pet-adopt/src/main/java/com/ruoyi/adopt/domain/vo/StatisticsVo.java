package com.ruoyi.adopt.domain.vo;

/**
 * @Desc: 统计
 * @Author: Lian
 * @Time: 2023/5/23 11:35
 */
public class StatisticsVo {

    /**
     * 名称
     */
    private String dateTime;

    /**
     * 总数
     */
    private int 发布领养;
    private int 发布寻宠;

    public String getDateTime() {
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

    public int get发布领养() {
        return 发布领养;
    }

    public void set发布领养(int 发布领养) {
        this.发布领养 = 发布领养;
    }

    public int get发布寻宠() {
        return 发布寻宠;
    }

    public void set发布寻宠(int 发布寻宠) {
        this.发布寻宠 = 发布寻宠;
    }
}

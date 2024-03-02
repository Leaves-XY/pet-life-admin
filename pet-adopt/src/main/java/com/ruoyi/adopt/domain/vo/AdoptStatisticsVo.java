package com.ruoyi.adopt.domain.vo;

/**
 * @Desc: 领养统计
 * @Author: Lian
 * @Time: 2023/5/23 11:35
 */
public class AdoptStatisticsVo {

    /**
     * 名称
     */
    private String name;

    /**
     * 总数
     */
    private int total;

    /**
     * 占比
     */
    private String rate;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

}

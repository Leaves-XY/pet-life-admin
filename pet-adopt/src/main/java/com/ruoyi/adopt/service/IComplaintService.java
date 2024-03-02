package com.ruoyi.adopt.service;

import java.util.List;
import com.ruoyi.adopt.domain.Complaint;

/**
 * 举报信息Service接口
 * 
 * @author lian
 * @date 2023-05-21
 */
public interface IComplaintService 
{
    /**
     * 查询举报信息
     * 
     * @param id 举报信息主键
     * @return 举报信息
     */
    public Complaint selectComplaintById(Long id);

    /**
     * 查询举报信息列表
     * 
     * @param complaint 举报信息
     * @return 举报信息集合
     */
    public List<Complaint> selectComplaintList(Complaint complaint);

    /**
     * 新增举报信息
     * 
     * @param complaint 举报信息
     * @return 结果
     */
    public int insertComplaint(Complaint complaint);

    /**
     * 修改举报信息
     * 
     * @param complaint 举报信息
     * @return 结果
     */
    public int updateComplaint(Complaint complaint);

    /**
     * 批量删除举报信息
     * 
     * @param ids 需要删除的举报信息主键集合
     * @return 结果
     */
    public int deleteComplaintByIds(Long[] ids);

    /**
     * 删除举报信息信息
     * 
     * @param id 举报信息主键
     * @return 结果
     */
    public int deleteComplaintById(Long id);
}

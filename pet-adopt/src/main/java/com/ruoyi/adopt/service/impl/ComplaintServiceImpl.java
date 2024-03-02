package com.ruoyi.adopt.service.impl;

import java.util.List;

import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.adopt.mapper.ComplaintMapper;
import com.ruoyi.adopt.domain.Complaint;
import com.ruoyi.adopt.service.IComplaintService;

/**
 * 举报信息Service业务层处理
 * 
 * @author lian
 * @date 2023-05-21
 */
@DataSource(value = DataSourceType.SLAVE)
@Service
public class ComplaintServiceImpl implements IComplaintService 
{
    @Autowired
    private ComplaintMapper complaintMapper;

    /**
     * 查询举报信息
     * 
     * @param id 举报信息主键
     * @return 举报信息
     */
    @Override
    public Complaint selectComplaintById(Long id)
    {
        return complaintMapper.selectComplaintById(id);
    }

    /**
     * 查询举报信息列表
     * 
     * @param complaint 举报信息
     * @return 举报信息
     */
    @Override
    public List<Complaint> selectComplaintList(Complaint complaint)
    {
        return complaintMapper.selectComplaintList(complaint);
    }

    /**
     * 新增举报信息
     * 
     * @param complaint 举报信息
     * @return 结果
     */
    @Override
    public int insertComplaint(Complaint complaint)
    {
        complaint.setCreateTime(DateUtils.getNowDate());
        return complaintMapper.insertComplaint(complaint);
    }

    /**
     * 修改举报信息
     * 
     * @param complaint 举报信息
     * @return 结果
     */
    @Override
    public int updateComplaint(Complaint complaint)
    {
        complaint.setUpdateTime(DateUtils.getNowDate());
        return complaintMapper.updateComplaint(complaint);
    }

    /**
     * 批量删除举报信息
     * 
     * @param ids 需要删除的举报信息主键
     * @return 结果
     */
    @Override
    public int deleteComplaintByIds(Long[] ids)
    {
        return complaintMapper.deleteComplaintByIds(ids);
    }

    /**
     * 删除举报信息信息
     * 
     * @param id 举报信息主键
     * @return 结果
     */
    @Override
    public int deleteComplaintById(Long id)
    {
        return complaintMapper.deleteComplaintById(id);
    }
}

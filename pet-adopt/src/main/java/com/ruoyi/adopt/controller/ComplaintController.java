package com.ruoyi.adopt.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.adopt.domain.Complaint;
import com.ruoyi.adopt.service.IComplaintService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 举报信息Controller
 * 
 * @author lian
 * @date 2023-05-21
 */
@RestController
@RequestMapping("/adopt/complaint")
public class ComplaintController extends BaseController
{
    @Autowired
    private IComplaintService complaintService;

    /**
     * 查询举报信息列表
     */
    @PreAuthorize("@ss.hasPermi('adopt:complaint:list')")
    @GetMapping("/list")
    public TableDataInfo list(Complaint complaint)
    {
        startPage();
        List<Complaint> list = complaintService.selectComplaintList(complaint);
        return getDataTable(list);
    }

    /**
     * 导出举报信息列表
     */
    @PreAuthorize("@ss.hasPermi('adopt:complaint:export')")
    @Log(title = "举报信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Complaint complaint)
    {
        List<Complaint> list = complaintService.selectComplaintList(complaint);
        ExcelUtil<Complaint> util = new ExcelUtil<Complaint>(Complaint.class);
        util.exportExcel(response, list, "举报信息数据");
    }

    /**
     * 获取举报信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('adopt:complaint:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return AjaxResult.success(complaintService.selectComplaintById(id));
    }

    /**
     * 新增举报信息
     */
    @PreAuthorize("@ss.hasPermi('adopt:complaint:add')")
    @Log(title = "举报信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Complaint complaint)
    {
        return toAjax(complaintService.insertComplaint(complaint));
    }

    /**
     * 修改举报信息
     */
    @PreAuthorize("@ss.hasPermi('adopt:complaint:edit')")
    @Log(title = "举报信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Complaint complaint)
    {
        return toAjax(complaintService.updateComplaint(complaint));
    }

    /**
     * 删除举报信息
     */
    @PreAuthorize("@ss.hasPermi('adopt:complaint:remove')")
    @Log(title = "举报信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(complaintService.deleteComplaintByIds(ids));
    }
}

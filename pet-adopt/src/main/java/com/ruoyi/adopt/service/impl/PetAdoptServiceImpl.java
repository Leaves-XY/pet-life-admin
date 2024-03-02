package com.ruoyi.adopt.service.impl;

import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;

import com.ruoyi.adopt.domain.vo.AdoptStatisticsVo;
import com.ruoyi.adopt.domain.vo.StatisticsVo;
import com.ruoyi.adopt.mapper.PetFindMapper;
import com.ruoyi.common.annotation.DataSource;
import com.ruoyi.common.enums.DataSourceType;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.adopt.mapper.PetAdoptMapper;
import com.ruoyi.adopt.domain.PetAdopt;
import com.ruoyi.adopt.service.IPetAdoptService;
import org.springframework.util.CollectionUtils;

/**
 * 宠物领养Service业务层处理
 * 
 * @author ruoyi
 * @date 2022-02-16
 */
@Service
public class PetAdoptServiceImpl implements IPetAdoptService 
{
    @Autowired
    private PetAdoptMapper petAdoptMapper;

    @Autowired
    private PetFindMapper petFindMapper;

    /**
     * 查询宠物领养
     * 
     * @param id 宠物领养主键
     * @return 宠物领养
     */
    @DataSource(value = DataSourceType.SLAVE)
    @Override
    public PetAdopt selectPetAdoptById(Integer id)
    {
        return petAdoptMapper.selectPetAdoptById(id);
    }

    /**
     * 查询宠物领养列表
     * 
     * @param petAdopt 宠物领养
     * @return 宠物领养
     */
    @DataSource(value = DataSourceType.SLAVE)
    @Override
    public List<PetAdopt> selectPetAdoptList(PetAdopt petAdopt)
    {
        return petAdoptMapper.selectPetAdoptList(petAdopt);
    }

    /**
     * 新增宠物领养
     * 
     * @param petAdopt 宠物领养
     * @return 结果
     */
    @DataSource(value = DataSourceType.SLAVE)
    @Override
    public int insertPetAdopt(PetAdopt petAdopt)
    {
        petAdopt.setCreateTime(DateUtils.getNowDate());
        return petAdoptMapper.insertPetAdopt(petAdopt);
    }

    /**
     * 修改宠物领养
     * 
     * @param petAdopt 宠物领养
     * @return 结果
     */
    @DataSource(value = DataSourceType.SLAVE)
    @Override
    public int updatePetAdopt(PetAdopt petAdopt)
    {
        petAdopt.setUpdateTime(DateUtils.getNowDate());
        return petAdoptMapper.updatePetAdopt(petAdopt);
    }

    /**
     * 批量删除宠物领养
     * 
     * @param ids 需要删除的宠物领养主键
     * @return 结果
     */
    @DataSource(value = DataSourceType.SLAVE)
    @Override
    public int deletePetAdoptByIds(Integer[] ids)
    {
        return petAdoptMapper.deletePetAdoptByIds(ids);
    }

    /**
     * 删除宠物领养信息
     * 
     * @param id 宠物领养主键
     * @return 结果
     */
    @DataSource(value = DataSourceType.SLAVE)
    @Override
    public int deletePetAdoptById(Integer id)
    {
        return petAdoptMapper.deletePetAdoptById(id);
    }

    @DataSource(value = DataSourceType.SLAVE)
    @Override
    public List<AdoptStatisticsVo> adoptStatistics() {
        return petAdoptMapper.adoptStatistics();
    }

    @DataSource(value = DataSourceType.SLAVE)
    @Override
    public List<StatisticsVo> petReleaseStatisticsForDate() {
        List<StatisticsVo> adoptVos = petAdoptMapper.queryAdoptForDate();
        List<StatisticsVo> findVos = petFindMapper.queryFindForDate();
        List<StatisticsVo> resVos = new ArrayList<>();
        if (!CollectionUtils.isEmpty(adoptVos)) {
            resVos.addAll(adoptVos);
        }
        if (!CollectionUtils.isEmpty(findVos)) {
            resVos.addAll(findVos);
        }
        List<StatisticsVo> vos = new ArrayList<>();
        Map<String, List<StatisticsVo>> collect = resVos.stream().collect(Collectors.groupingBy(StatisticsVo::getDateTime));
        collect.forEach((key, value) -> {
            System.out.println("key: " + key + ", value: " + value);
            List<StatisticsVo> list = new ArrayList<>();
            StatisticsVo statisticsVo = new StatisticsVo();
            AtomicReference<Integer> total1 = new AtomicReference<>(0);
            AtomicReference<Integer> total2 = new AtomicReference<>(0);
            value.forEach(e -> {
                total1.set(e.get发布领养() + total1.get());
                total2.set(e.get发布寻宠() + total2.get());
            });
            statisticsVo.setDateTime(key);
            statisticsVo.set发布领养(total1.get());
            statisticsVo.set发布寻宠(total2.get());
            list.add(statisticsVo);
            vos.addAll(list);
        });
        vos.sort(Comparator.comparing(StatisticsVo::getDateTime));
        return vos;
    }
}

package com.ruoyi.inventory.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.inventory.mapper.InventoryOffsettingMapper;
import com.ruoyi.inventory.domain.InventoryOffsetting;
import com.ruoyi.inventory.service.IInventoryOffsettingService;

/**
 * 对冲记录工单Service业务层处理
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@Service
public class InventoryOffsettingServiceImpl implements IInventoryOffsettingService 
{
    @Autowired
    private InventoryOffsettingMapper inventoryOffsettingMapper;

    /**
     * 查询对冲记录工单
     * 
     * @param offsettingId 对冲记录工单主键
     * @return 对冲记录工单
     */
    @Override
    public InventoryOffsetting selectInventoryOffsettingByOffsettingId(Long offsettingId)
    {
        return inventoryOffsettingMapper.selectInventoryOffsettingByOffsettingId(offsettingId);
    }

    /**
     * 查询对冲记录工单列表
     * 
     * @param inventoryOffsetting 对冲记录工单
     * @return 对冲记录工单
     */
    @Override
    public List<InventoryOffsetting> selectInventoryOffsettingList(InventoryOffsetting inventoryOffsetting)
    {
        return inventoryOffsettingMapper.selectInventoryOffsettingList(inventoryOffsetting);
    }

    /**
     * 新增对冲记录工单
     * 
     * @param inventoryOffsetting 对冲记录工单
     * @return 结果
     */
    @Override
    public int insertInventoryOffsetting(InventoryOffsetting inventoryOffsetting)
    {
        inventoryOffsetting.setCreateTime(DateUtils.getNowDate());
        return inventoryOffsettingMapper.insertInventoryOffsetting(inventoryOffsetting);
    }

    /**
     * 修改对冲记录工单
     * 
     * @param inventoryOffsetting 对冲记录工单
     * @return 结果
     */
    @Override
    public int updateInventoryOffsetting(InventoryOffsetting inventoryOffsetting)
    {
        inventoryOffsetting.setUpdateTime(DateUtils.getNowDate());
        return inventoryOffsettingMapper.updateInventoryOffsetting(inventoryOffsetting);
    }

    /**
     * 批量删除对冲记录工单
     * 
     * @param offsettingIds 需要删除的对冲记录工单主键
     * @return 结果
     */
    @Override
    public int deleteInventoryOffsettingByOffsettingIds(Long[] offsettingIds)
    {
        return inventoryOffsettingMapper.deleteInventoryOffsettingByOffsettingIds(offsettingIds);
    }

    /**
     * 删除对冲记录工单信息
     * 
     * @param offsettingId 对冲记录工单主键
     * @return 结果
     */
    @Override
    public int deleteInventoryOffsettingByOffsettingId(Long offsettingId)
    {
        return inventoryOffsettingMapper.deleteInventoryOffsettingByOffsettingId(offsettingId);
    }
}

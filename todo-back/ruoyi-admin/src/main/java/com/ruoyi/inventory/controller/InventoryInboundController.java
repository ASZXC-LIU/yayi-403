package com.ruoyi.inventory.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.inventory.domain.InventoryMedicine;
import com.ruoyi.inventory.domain.InventoryTools;
import com.ruoyi.inventory.mapper.InventoryMedicineMapper;
import com.ruoyi.inventory.service.IInventoryMedicineService;
import com.ruoyi.inventory.service.IInventoryToolsService;
import com.ruoyi.inventory.service.impl.InventoryMedicineServiceImpl;
import com.ruoyi.supplier.service.ISupplierService;
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
import com.ruoyi.inventory.domain.InventoryInbound;
import com.ruoyi.inventory.service.IInventoryInboundService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 入库工单Controller
 * 
 * @author 刘航
 * @date 2024-11-13
 */
@RestController
@RequestMapping("/inbound/inbounds")
public class InventoryInboundController extends BaseController
{
    @Autowired
    private IInventoryInboundService inventoryInboundService;
    @Autowired
    private IInventoryMedicineService inventoryMedicineService;
    @Autowired
    private ISupplierService supplierService;
    @Autowired
    private IInventoryToolsService inventoryToolsService;

    /**
     * 查询入库工单列表
     */
    @PreAuthorize("@ss.hasPermi('inbound:inbounds:list')")
    @GetMapping("/list")
    public TableDataInfo list(InventoryInbound inventoryInbound)
    {
        startPage();
        List<InventoryInbound> list = inventoryInboundService.selectInventoryInboundList(inventoryInbound);
        return getDataTable(list);
    }

    /**
     * 导出入库工单列表
     */
    @PreAuthorize("@ss.hasPermi('inbound:inbounds:export')")
    @Log(title = "入库工单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, InventoryInbound inventoryInbound)
    {
        List<InventoryInbound> list = inventoryInboundService.selectInventoryInboundList(inventoryInbound);
        ExcelUtil<InventoryInbound> util = new ExcelUtil<InventoryInbound>(InventoryInbound.class);
        util.exportExcel(response, list, "入库工单数据");
    }

    /**
     * 获取入库工单详细信息
     */
    @PreAuthorize("@ss.hasPermi('inbound:inbounds:query')")
    @GetMapping(value = "/{inboundId}")
    public AjaxResult getInfo(@PathVariable("inboundId") Long inboundId)
    {
        return success(inventoryInboundService.selectInventoryInboundByInboundId(inboundId));
    }

    /**
     * 新增入库工单
     */
    @PreAuthorize("@ss.hasPermi('inbound:inbounds:add')")
    @Log(title = "入库工单", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody InventoryInbound inventoryInbound)
    {



        if(inventoryInbound.getItemId() != null){
            InventoryMedicine inventoryMedicine = inventoryMedicineService.selectInventoryMedicineByMedicineId(inventoryInbound.getItemId());
            //读取入库的供应商给药品表
            inventoryMedicine.setSupplier(inventoryInbound.getSupplier());
            inventoryMedicineService.updateInventoryMedicine(inventoryMedicine);//更新药品库存
            supplierService.updateItemId(inventoryInbound);

            //读取药品的计量单位传递给入库表
             String unit = inventoryMedicine.getUnit();
            inventoryInbound.setUnit(unit);
            return toAjax(inventoryInboundService.insertInventoryInbound(inventoryInbound));
        }else {
            return AjaxResult.error("ID不存在");
        }
    }

    /**
     * 新增入库工单
     */
    @PreAuthorize("@ss.hasPermi('inbound:inbounds:add')")
    @Log(title = "入库工单", businessType = BusinessType.INSERT)
    @PostMapping("/addTool")
    public AjaxResult addTool(@RequestBody InventoryInbound inventoryInbound)
    {



        if(inventoryInbound.getItemId() != null){
            InventoryTools inventoryTools = inventoryToolsService.selectInventoryToolsByToolsId(inventoryInbound.getItemId());
            //读取入库的供应商给工具表
            inventoryTools.setSupplier(inventoryInbound.getSupplier());
            inventoryToolsService.updateInventoryTools(inventoryTools);//更新药品库存
            supplierService.updateItemId(inventoryInbound);

            //读取药品的计量单位传递给入库表
            String unit = inventoryTools.getUnit();
            inventoryInbound.setUnit(unit);
            return toAjax(inventoryInboundService.insertInventoryInbound(inventoryInbound));
        }else {
            return AjaxResult.error("ID不存在");
        }
    }

    /**
     * 修改入库工单
     */
    @PreAuthorize("@ss.hasPermi('inbound:inbounds:edit')")
    @Log(title = "入库工单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody InventoryInbound inventoryInbound)
    {
        return toAjax(inventoryInboundService.updateInventoryInbound(inventoryInbound));
    }

    /**
     * 删除入库工单
     */
    @PreAuthorize("@ss.hasPermi('inbound:inbounds:remove')")
    @Log(title = "入库工单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{inboundIds}")
    public AjaxResult remove(@PathVariable Long[] inboundIds)
    {
        return toAjax(inventoryInboundService.deleteInventoryInboundByInboundIds(inboundIds));
    }
}

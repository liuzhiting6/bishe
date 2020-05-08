package com.ruoyi.keti.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.keti.mapper.SysKetiMapper;
import com.ruoyi.keti.domain.SysKeti;
import com.ruoyi.keti.service.ISysKetiService;
import com.ruoyi.common.core.text.Convert;

/**
 * 待选课题Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-04-17
 */
@Service
public class SysKetiServiceImpl implements ISysKetiService 
{
    @Autowired
    private SysKetiMapper sysKetiMapper;

    /**
     * 查询待选课题
     * 
     * @param id 待选课题ID
     * @return 待选课题
     */
    @Override
    public SysKeti selectSysKetiById(Long id)
    {
        return sysKetiMapper.selectSysKetiById(id);
    }

    /**
     * 查询待选课题列表
     * 
     * @param sysKeti 待选课题
     * @return 待选课题
     */
    @Override
    public List<SysKeti> selectSysKetiList(SysKeti sysKeti)
    {
        return sysKetiMapper.selectSysKetiList(sysKeti);
    }

    /**
     * 新增待选课题
     * 
     * @param sysKeti 待选课题
     * @return 结果
     */
    @Override
    public int insertSysKeti(SysKeti sysKeti)
    {
        return sysKetiMapper.insertSysKeti(sysKeti);
    }

    /**
     * 修改待选课题
     * 
     * @param sysKeti 待选课题
     * @return 结果
     */
    @Override
    public int updateSysKeti(SysKeti sysKeti)
    {
        return sysKetiMapper.updateSysKeti(sysKeti);
    }

    /**
     * 删除待选课题对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysKetiByIds(String ids)
    {
        return sysKetiMapper.deleteSysKetiByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除待选课题信息
     * 
     * @param id 待选课题ID
     * @return 结果
     */
    @Override
    public int deleteSysKetiById(Long id)
    {
        return sysKetiMapper.deleteSysKetiById(id);
    }
}

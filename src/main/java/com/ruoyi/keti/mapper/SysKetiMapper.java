package com.ruoyi.keti.mapper;

import java.util.List;
import com.ruoyi.keti.domain.SysKeti;

/**
 * 待选课题Mapper接口
 * 
 * @author ruoyi
 * @date 2020-04-17
 */
public interface SysKetiMapper 
{
    /**
     * 查询待选课题
     * 
     * @param id 待选课题ID
     * @return 待选课题
     */
    public SysKeti selectSysKetiById(Long id);

    /**
     * 查询待选课题列表
     * 
     * @param sysKeti 待选课题
     * @return 待选课题集合
     */
    public List<SysKeti> selectSysKetiList(SysKeti sysKeti);

    /**
     * 新增待选课题
     * 
     * @param sysKeti 待选课题
     * @return 结果
     */
    public int insertSysKeti(SysKeti sysKeti);

    /**
     * 修改待选课题
     * 
     * @param sysKeti 待选课题
     * @return 结果
     */
    public int updateSysKeti(SysKeti sysKeti);

    /**
     * 删除待选课题
     * 
     * @param id 待选课题ID
     * @return 结果
     */
    public int deleteSysKetiById(Long id);

    /**
     * 批量删除待选课题
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysKetiByIds(String[] ids);
}

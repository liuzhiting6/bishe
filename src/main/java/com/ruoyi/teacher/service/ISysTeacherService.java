package com.ruoyi.teacher.service;

import java.util.List;
import com.ruoyi.teacher.domain.SysTeacher;

/**
 * 教师Service接口
 * 
 * @author ruoyi
 * @date 2020-04-17
 */
public interface ISysTeacherService 
{
    /**
     * 查询教师
     * 
     * @param id 教师ID
     * @return 教师
     */
    public SysTeacher selectSysTeacherById(Long id);

    /**
     * 查询教师列表
     * 
     * @param sysTeacher 教师
     * @return 教师集合
     */
    public List<SysTeacher> selectSysTeacherList(SysTeacher sysTeacher);

    /**
     * 新增教师
     * 
     * @param sysTeacher 教师
     * @return 结果
     */
    public int insertSysTeacher(SysTeacher sysTeacher);

    /**
     * 修改教师
     * 
     * @param sysTeacher 教师
     * @return 结果
     */
    public int updateSysTeacher(SysTeacher sysTeacher);

    /**
     * 批量删除教师
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysTeacherByIds(String ids);

    /**
     * 删除教师信息
     * 
     * @param id 教师ID
     * @return 结果
     */
    public int deleteSysTeacherById(Long id);
}

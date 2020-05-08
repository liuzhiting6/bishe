package com.ruoyi.student.service;

import java.util.List;
import com.ruoyi.student.domain.SysStudent;

/**
 * 学生信息Service接口
 * 
 * @author ruoyi
 * @date 2020-04-20
 */
public interface ISysStudentService 
{
    /**
     * 查询学生信息
     * 
     * @param id 学生信息ID
     * @return 学生信息
     */
    public SysStudent selectSysStudentById(Long id);

    /**
     * 查询学生信息列表
     * 
     * @param sysStudent 学生信息
     * @return 学生信息集合
     */
    public List<SysStudent> selectSysStudentList(SysStudent sysStudent);

    /**
     * 新增学生信息
     * 
     * @param sysStudent 学生信息
     * @return 结果
     */
    public int insertSysStudent(SysStudent sysStudent);

    /**
     * 修改学生信息
     * 
     * @param sysStudent 学生信息
     * @return 结果
     */
    public int updateSysStudent(SysStudent sysStudent);

    /**
     * 批量删除学生信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysStudentByIds(String ids);

    /**
     * 删除学生信息信息
     * 
     * @param id 学生信息ID
     * @return 结果
     */
    public int deleteSysStudentById(Long id);
}

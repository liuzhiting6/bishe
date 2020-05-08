package com.ruoyi.student.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.student.mapper.SysStudentMapper;
import com.ruoyi.student.domain.SysStudent;
import com.ruoyi.student.service.ISysStudentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 学生信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-04-20
 */
@Service
public class SysStudentServiceImpl implements ISysStudentService 
{
    @Autowired
    private SysStudentMapper sysStudentMapper;

    /**
     * 查询学生信息
     * 
     * @param id 学生信息ID
     * @return 学生信息
     */
    @Override
    public SysStudent selectSysStudentById(Long id)
    {
        return sysStudentMapper.selectSysStudentById(id);
    }

    /**
     * 查询学生信息列表
     * 
     * @param sysStudent 学生信息
     * @return 学生信息
     */
    @Override
    public List<SysStudent> selectSysStudentList(SysStudent sysStudent)
    {
        return sysStudentMapper.selectSysStudentList(sysStudent);
    }

    /**
     * 新增学生信息
     * 
     * @param sysStudent 学生信息
     * @return 结果
     */
    @Override
    public int insertSysStudent(SysStudent sysStudent)
    {
        return sysStudentMapper.insertSysStudent(sysStudent);
    }

    /**
     * 修改学生信息
     * 
     * @param sysStudent 学生信息
     * @return 结果
     */
    @Override
    public int updateSysStudent(SysStudent sysStudent)
    {
        return sysStudentMapper.updateSysStudent(sysStudent);
    }

    /**
     * 删除学生信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysStudentByIds(String ids)
    {
        return sysStudentMapper.deleteSysStudentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生信息信息
     * 
     * @param id 学生信息ID
     * @return 结果
     */
    @Override
    public int deleteSysStudentById(Long id)
    {
        return sysStudentMapper.deleteSysStudentById(id);
    }
}

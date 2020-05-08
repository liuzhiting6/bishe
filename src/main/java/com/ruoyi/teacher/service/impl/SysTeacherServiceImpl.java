package com.ruoyi.teacher.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.teacher.mapper.SysTeacherMapper;
import com.ruoyi.teacher.domain.SysTeacher;
import com.ruoyi.teacher.service.ISysTeacherService;
import com.ruoyi.common.core.text.Convert;

/**
 * 教师Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-04-17
 */
@Service
public class SysTeacherServiceImpl implements ISysTeacherService 
{
    @Autowired
    private SysTeacherMapper sysTeacherMapper;

    /**
     * 查询教师
     * 
     * @param id 教师ID
     * @return 教师
     */
    @Override
    public SysTeacher selectSysTeacherById(Long id)
    {
        return sysTeacherMapper.selectSysTeacherById(id);
    }

    /**
     * 查询教师列表
     * 
     * @param sysTeacher 教师
     * @return 教师
     */
    @Override
    public List<SysTeacher> selectSysTeacherList(SysTeacher sysTeacher)
    {
        return sysTeacherMapper.selectSysTeacherList(sysTeacher);
    }

    /**
     * 新增教师
     * 
     * @param sysTeacher 教师
     * @return 结果
     */
    @Override
    public int insertSysTeacher(SysTeacher sysTeacher)
    {
        return sysTeacherMapper.insertSysTeacher(sysTeacher);
    }

    /**
     * 修改教师
     * 
     * @param sysTeacher 教师
     * @return 结果
     */
    @Override
    public int updateSysTeacher(SysTeacher sysTeacher)
    {
        return sysTeacherMapper.updateSysTeacher(sysTeacher);
    }

    /**
     * 删除教师对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysTeacherByIds(String ids)
    {
        return sysTeacherMapper.deleteSysTeacherByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除教师信息
     * 
     * @param id 教师ID
     * @return 结果
     */
    @Override
    public int deleteSysTeacherById(Long id)
    {
        return sysTeacherMapper.deleteSysTeacherById(id);
    }
}

package com.ruoyi.keti.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 待选课题对象 sys_keti
 * 
 * @author ruoyi
 * @date 2020-04-17
 */
public class SysKeti extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    private Long id;

    /** 课题名称 */
    @Excel(name = "课题名称")
    private String title;

    /** 论文状态 */
    @Excel(name = "论文状态")
    private String state;

    /** 任务书名称 */
    @Excel(name = "任务书名称")
    private String renwushuName;

    /** 任务书文件地址 */
    private String renwushuUrl;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 学生id */
    private Long studentId;

    private String caozuoren;
    private String chuangjiantime;

    public String getCaozuoren() {
        return caozuoren;
    }

    public void setCaozuoren(String caozuoren) {
        this.caozuoren = caozuoren;
    }

    public String getChuangjiantime() {
        return chuangjiantime;
    }

    public void setChuangjiantime(String chuangjiantime) {
        this.chuangjiantime = chuangjiantime;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setState(String state) 
    {
        this.state = state;
    }

    public String getState() 
    {
        return state;
    }
    public void setRenwushuName(String renwushuName) 
    {
        this.renwushuName = renwushuName;
    }

    public String getRenwushuName() 
    {
        return renwushuName;
    }
    public void setRenwushuUrl(String renwushuUrl) 
    {
        this.renwushuUrl = renwushuUrl;
    }

    public String getRenwushuUrl() 
    {
        return renwushuUrl;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("state", getState())
            .append("renwushuName", getRenwushuName())
            .append("renwushuUrl", getRenwushuUrl())
            .append("studentName", getStudentName())
            .append("studentId", getStudentId())
            .append("remark", getRemark())
            .toString();
    }
}

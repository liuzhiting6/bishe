package com.ruoyi.teacher.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 教师对象 sys_teacher
 * 
 * @author ruoyi
 * @date 2020-04-17
 */
public class SysTeacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 性别 */
    @Excel(name = "性别")
    private String sex;

    /** 工号 */
    @Excel(name = "工号")
    private String gonghao;

    /** 职位 */
    @Excel(name = "职位")
    private String zhiwei;

    /** 联系方式 */
    @Excel(name = "联系方式")
    private String phone;

    /** 是否发布课题 */
    @Excel(name = "是否发布课题")
    private String fabuKetiState;

    /** 是否完成论文审核 */
    @Excel(name = "是否完成论文审核")
    private String lunwenShenheState;

    /** 是否完成答辩工作 */
    @Excel(name = "是否完成答辩工作")
    private String dabianGongzuoState;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }
    public void setGonghao(String gonghao) 
    {
        this.gonghao = gonghao;
    }

    public String getGonghao() 
    {
        return gonghao;
    }
    public void setZhiwei(String zhiwei) 
    {
        this.zhiwei = zhiwei;
    }

    public String getZhiwei() 
    {
        return zhiwei;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setFabuKetiState(String fabuKetiState) 
    {
        this.fabuKetiState = fabuKetiState;
    }

    public String getFabuKetiState() 
    {
        return fabuKetiState;
    }
    public void setLunwenShenheState(String lunwenShenheState) 
    {
        this.lunwenShenheState = lunwenShenheState;
    }

    public String getLunwenShenheState() 
    {
        return lunwenShenheState;
    }
    public void setDabianGongzuoState(String dabianGongzuoState) 
    {
        this.dabianGongzuoState = dabianGongzuoState;
    }

    public String getDabianGongzuoState() 
    {
        return dabianGongzuoState;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("sex", getSex())
            .append("gonghao", getGonghao())
            .append("zhiwei", getZhiwei())
            .append("phone", getPhone())
            .append("fabuKetiState", getFabuKetiState())
            .append("lunwenShenheState", getLunwenShenheState())
            .append("dabianGongzuoState", getDabianGongzuoState())
            .toString();
    }
}

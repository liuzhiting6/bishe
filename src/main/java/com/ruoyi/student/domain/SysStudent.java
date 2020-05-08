package com.ruoyi.student.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生信息对象 sys_student
 *
 * @author ruoyi
 * @date 2020-04-20
 */
public class SysStudent extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 主键id
   */
  private Long id;

  /**
   * 姓名
   */
  @Excel(name = "姓名")
  private String name;

  /**
   * 学号
   */
  @Excel(name = "学号")
  private String xuehao;

  /**
   * 性别
   */
  @Excel(name = "性别")
  private String sex;

  /**
   * 专业班级
   */
  @Excel(name = "专业班级")
  private String banji;

  /**
   * 联系方式
   */
  @Excel(name = "联系方式")
  private String phone;

  /**
   * 是否选题
   */
  @Excel(name = "是否选题")
  private String xuantiState;

  /**
   * 论文状态
   */
  @Excel(name = "论文状态")
  private String lunwenState;

  /**
   * 答辩状态
   */
  @Excel(name = "答辩状态")
  private String dabianState;

  /**
   * 课题id
   */
  @Excel(name = "课题id")
  private Long ketiId;

  /**
   * 课题名称
   */
  @Excel(name = "课题名称")
  private String ketiName;

  /**
   * 论文名称
   */
  @Excel(name = "论文名称")
  private String lunwenName;

  /**
   * 论文文件地址
   */
  private String lunwenUrl;

  private String shenhecaozuoren;
  private String shneheshijian;
  private String dabiancaozuoren;
  private String dabiancaozuoshijian;

  public void setId(Long id) {
    this.id = id;
  }

  public Long getId() {
    return id;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getName() {
    return name;
  }

  public void setXuehao(String xuehao) {
    this.xuehao = xuehao;
  }

  public String getXuehao() {
    return xuehao;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }

  public String getSex() {
    return sex;
  }

  public void setBanji(String banji) {
    this.banji = banji;
  }

  public String getBanji() {
    return banji;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getPhone() {
    return phone;
  }

  public void setXuantiState(String xuantiState) {
    this.xuantiState = xuantiState;
  }

  public String getXuantiState() {
    return xuantiState;
  }

  public void setLunwenState(String lunwenState) {
    this.lunwenState = lunwenState;
  }

  public String getLunwenState() {
    return lunwenState;
  }

  public void setDabianState(String dabianState) {
    this.dabianState = dabianState;
  }

  public String getDabianState() {
    return dabianState;
  }

  public void setKetiId(Long ketiId) {
    this.ketiId = ketiId;
  }

  public Long getKetiId() {
    return ketiId;
  }

  public void setKetiName(String ketiName) {
    this.ketiName = ketiName;
  }

  public String getKetiName() {
    return ketiName;
  }

  public void setLunwenName(String lunwenName) {
    this.lunwenName = lunwenName;
  }

  public String getLunwenName() {
    return lunwenName;
  }

  public void setLunwenUrl(String lunwenUrl) {
    this.lunwenUrl = lunwenUrl;
  }

  public String getLunwenUrl() {
    return lunwenUrl;
  }

  public String getShenhecaozuoren() {
    return shenhecaozuoren;
  }

  public void setShenhecaozuoren(String shenhecaozuoren) {
    this.shenhecaozuoren = shenhecaozuoren;
  }

  public String getShneheshijian() {
    return shneheshijian;
  }

  public void setShneheshijian(String shneheshijian) {
    this.shneheshijian = shneheshijian;
  }

  public String getDabiancaozuoren() {
    return dabiancaozuoren;
  }

  public void setDabiancaozuoren(String dabiancaozuoren) {
    this.dabiancaozuoren = dabiancaozuoren;
  }

  public String getDabiancaozuoshijian() {
    return dabiancaozuoshijian;
  }

  public void setDabiancaozuoshijian(String dabiancaozuoshijian) {
    this.dabiancaozuoshijian = dabiancaozuoshijian;
  }

  @Override
  public String toString() {
    return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
        .append("id", getId())
        .append("name", getName())
        .append("xuehao", getXuehao())
        .append("sex", getSex())
        .append("banji", getBanji())
        .append("phone", getPhone())
        .append("xuantiState", getXuantiState())
        .append("lunwenState", getLunwenState())
        .append("dabianState", getDabianState())
        .append("ketiId", getKetiId())
        .append("ketiName", getKetiName())
        .append("lunwenName", getLunwenName())
        .append("lunwenUrl", getLunwenUrl())
        .toString();
  }
}

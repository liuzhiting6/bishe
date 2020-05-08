package com.ruoyi.student.controller;

import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.keti.domain.SysKeti;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysPostService;
import com.ruoyi.system.service.ISysRoleService;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.teacher.domain.SysTeacher;
import com.ruoyi.teacher.service.ISysTeacherService;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.student.domain.SysStudent;
import com.ruoyi.student.service.ISysStudentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生信息Controller
 *
 * @author ruoyi
 * @date 2020-04-20
 */
@Controller
@RequestMapping("/student/student")
public class SysStudentController extends BaseController {

  private String prefix = "student/student";

  @Autowired
  private ISysStudentService sysStudentService;
  @Autowired
  private ISysUserService userService;

  @Autowired
  private ISysRoleService roleService;

  @Autowired
  private ISysPostService postService;

  @Autowired
  private SysPasswordService passwordService;


  @Autowired
  private ISysTeacherService teacherService;

  @RequiresPermissions("student:student:view")
  @GetMapping()
  public String student() {
    return prefix + "/student";
  }

  //未选题
  @RequiresPermissions("weixuanti:weixuanti:view")
  @GetMapping("/weixuanti")
  public String weixuanti() {
    return prefix + "/weixuanti";
  }

  @PostMapping("/weixuanti")
  @ResponseBody
  public TableDataInfo listweixuanti(SysStudent sysStudent) {
    startPage();
    sysStudent.setXuantiState("2");
    List<SysStudent> list = sysStudentService.selectSysStudentList(sysStudent);
    return getDataTable(list);
  }

  //未确认论文
  @RequiresPermissions("student:student:weiqueren")
  @GetMapping("/weiqueren")
  public String weiqueren() {
    return prefix + "/weiqueren";
  }

  @PostMapping("/weiqueren")
  @ResponseBody
  public TableDataInfo listweiqueren(SysStudent sysStudent) {
    startPage();
    sysStudent.setLunwenState("2");
    List<SysStudent> list = sysStudentService.selectSysStudentList(sysStudent);
    return getDataTable(list);
  }

  //无资格
  @RequiresPermissions("student:student:wuzige")
  @GetMapping("/wuzige")
  public String wuzige() {
    return prefix + "/wuzige";
  }

  @PostMapping("/wuzige")
  @ResponseBody
  public TableDataInfo listwuzige(SysStudent sysStudent) {
    startPage();
    sysStudent.setDabianState("1");
    List<SysStudent> list = sysStudentService.selectSysStudentList(sysStudent);
    return getDataTable(list);
  }

  //未通过
  @RequiresPermissions("student:student:weitongguo")
  @GetMapping("/weitongguo")
  public String weitongguo() {
    return prefix + "/weitongguo";
  }

  @PostMapping("/weitongguo")
  @ResponseBody
  public TableDataInfo listweitongguo(SysStudent sysStudent) {
    startPage();
    sysStudent.setDabianState("2");
    List<SysStudent> list = sysStudentService.selectSysStudentList(sysStudent);
    return getDataTable(list);
  }


  /**
   * 查询学生信息列表
   */
  @RequiresPermissions("student:student:list")
  @PostMapping("/list")
  @ResponseBody
  public TableDataInfo list(SysStudent sysStudent) {
    startPage();
    List<SysStudent> list = sysStudentService.selectSysStudentList(sysStudent);
    return getDataTable(list);
  }

  /**
   * 导出学生信息列表
   */
  @RequiresPermissions("student:student:export")
  @Log(title = "学生信息", businessType = BusinessType.EXPORT)
  @PostMapping("/export")
  @ResponseBody
  public AjaxResult export(SysStudent sysStudent) {
    List<SysStudent> list = sysStudentService.selectSysStudentList(sysStudent);
    ExcelUtil<SysStudent> util = new ExcelUtil<SysStudent>(SysStudent.class);
    return util.exportExcel(list, "student");
  }

  /**
   * 新增学生信息
   */
  @GetMapping("/add")
  public String add() {
    return prefix + "/add";
  }

  /**
   * 新增保存学生信息
   */
  @RequiresPermissions("student:student:add")
  @Log(title = "学生信息", businessType = BusinessType.INSERT)
  @PostMapping("/add")
  @ResponseBody
  public AjaxResult addSave(SysStudent sysStudent) {
    //往用户表增加用户信息
    SysUser sysUser = new SysUser();
    sysUser.setUserName(sysStudent.getName());
    sysUser.setLoginName(sysStudent.getXuehao());
    sysUser.setSalt(ShiroUtils.randomSalt());
    sysUser.setPassword(passwordService.encryptPassword(sysUser.getLoginName(), "123456", sysUser.getSalt()));
    sysUser.setCreateBy(ShiroUtils.getLoginName());
    Long[] roleIds = new Long[1];
    roleIds[0] = 3L;
    sysUser.setRoleIds(roleIds);
    userService.insertUser(sysUser);

    return toAjax(sysStudentService.insertSysStudent(sysStudent));
  }

  /**
   * 修改学生信息
   */
  @GetMapping("/edit/{id}")
  public String edit(@PathVariable("id") Long id, ModelMap mmap) {
    SysStudent sysStudent = sysStudentService.selectSysStudentById(id);
    mmap.put("sysStudent", sysStudent);
    return prefix + "/edit";
  }

  //上传论文
  @GetMapping("/shangchuan/{id}")
  public String shangchuan(@PathVariable("id") Long id, ModelMap mmap) {

    mmap.put("id", id);
    return prefix + "/shangchuan";
  }

  //审核
  @GetMapping("/shenhe/{id}")
  public String shenhe(@PathVariable("id") Long id, ModelMap mmap) {
    mmap.put("shenhecaozuoren", ShiroUtils.getSysUser().getUserName());
    mmap.put("id", id);
    return prefix + "/shenhe";
  }

  @PostMapping("/shenhe")
  @ResponseBody
  public AjaxResult shenhe(SysStudent sysStudent) {

    sysStudent.setShneheshijian(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
    sysStudentService.updateSysStudent(sysStudent);

    //todo 修改教师信息

    SysStudent student = new SysStudent();
    student.setLunwenState("5");
    List<SysStudent> sysStudents = sysStudentService.selectSysStudentList(student);
    if (sysStudents.isEmpty()) {

      SysUser sysUser = ShiroUtils.getSysUser();
      String loginName = sysUser.getLoginName();
      SysTeacher sysTeacher = new SysTeacher();
      sysTeacher.setGonghao(loginName);
      if (!teacherService.selectSysTeacherList(sysTeacher).isEmpty()) {
        SysTeacher teacher = teacherService.selectSysTeacherList(sysTeacher).get(0);
        teacher.setLunwenShenheState("1");
        teacherService.updateSysTeacher(teacher);
      }


    }

    return toAjax(true);
  }


  //修改答辩状态
  @GetMapping("/updateLunwen/{id}")
  public String updateLunwen(@PathVariable("id") Long id, ModelMap mmap) {

    mmap.put("id", id);
    mmap.put("dabiancaozuoren", ShiroUtils.getSysUser().getUserName());
    return prefix + "/updateLunwen";
  }

  @PostMapping("/updateLunwen")
  @ResponseBody
  public AjaxResult updateLunwen(SysStudent sysStudent) {
    sysStudent.setDabiancaozuoshijian(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
    sysStudentService.updateSysStudent(sysStudent);
    //todo 修改教师信息

    SysStudent student = new SysStudent();
    student.setLunwenState("5");
    List<SysStudent> sysStudents = sysStudentService.selectSysStudentList(student);
    if (sysStudents.isEmpty()) {

      SysUser sysUser = ShiroUtils.getSysUser();
      String loginName = sysUser.getLoginName();
      SysTeacher sysTeacher = new SysTeacher();
      sysTeacher.setGonghao(loginName);
      if (!teacherService.selectSysTeacherList(sysTeacher).isEmpty()) {
        SysTeacher teacher = teacherService.selectSysTeacherList(sysTeacher).get(0);
        teacher.setLunwenShenheState("1");
        teacherService.updateSysTeacher(teacher);
      }


    }
    return toAjax(true);
  }

  @PostMapping("/saveLunwen")
  @ResponseBody
  public AjaxResult saveLunwen(SysStudent sysStudent) {
    List<SysStudent> sysStudents = sysStudentService.selectSysStudentList(sysStudent);
    if (!sysStudents.isEmpty()) {
      if (sysStudents.get(0).getLunwenState().equals("3")) {
        return error("论文已确认，无法重新上传");
      }
    }

    System.out.println(sysStudent);
    sysStudent.setLunwenState("2");
    sysStudentService.updateSysStudent(sysStudent);

    return toAjax(true);
  }
  @PostMapping("/queren/{id}")
  @ResponseBody
  public AjaxResult queren(@PathVariable("id") Long id, ModelMap mmap) {
    SysStudent student = sysStudentService.selectSysStudentById(id);
    if (student.getLunwenState().equals("3")) {
      return error("论文已确认,没必要重新确认!");
    }
    student.setLunwenState("3");
    sysStudentService.updateSysStudent(student);

    return success("论文已确认!");
  }


  /**
   * 修改保存学生信息
   */
  @RequiresPermissions("student:student:edit")
  @Log(title = "学生信息", businessType = BusinessType.UPDATE)
  @PostMapping("/edit")
  @ResponseBody
  public AjaxResult editSave(SysStudent sysStudent) {
    return toAjax(sysStudentService.updateSysStudent(sysStudent));
  }

  /**
   * 删除学生信息
   */
  @RequiresPermissions("student:student:remove")
  @Log(title = "学生信息", businessType = BusinessType.DELETE)
  @PostMapping("/remove")
  @ResponseBody
  public AjaxResult remove(String ids) {
    return toAjax(sysStudentService.deleteSysStudentByIds(ids));
  }

  //下载任务书
  @RequestMapping("/download")
  @RequiresPermissions("keti:keti:down")
  public AjaxResult downLoad(HttpServletResponse response, String id)
      throws UnsupportedEncodingException {
    SysStudent keti = sysStudentService.selectSysStudentById(Long.valueOf(id));
    File file = new File(keti.getLunwenUrl());
    if (file.exists()) { // 判断文件父目录是否存在

      response.setContentType("application/vnd.ms-excel;charset=UTF-8");
      response.setCharacterEncoding("UTF-8");
      // response.setContentType("application/force-download");
      response.setHeader(
          "Content-Disposition",
          "attachment;fileName=" + java.net.URLEncoder.encode(keti.getLunwenName(), "UTF-8"));
      byte[] buffer = new byte[1024];
      FileInputStream fis = null; // 文件输入流
      BufferedInputStream bis = null;

      OutputStream os = null; // 输出流
      try {
        os = response.getOutputStream();
        fis = new FileInputStream(file);
        bis = new BufferedInputStream(fis);
        int i = bis.read(buffer);
        while (i != -1) {
          os.write(buffer);
          i = bis.read(buffer);
        }

      } catch (Exception e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
      try {
        bis.close();
        fis.close();
      } catch (IOException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }
    return error("暂无文件下载");
  }
}

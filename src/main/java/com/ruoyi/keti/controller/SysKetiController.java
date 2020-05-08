package com.ruoyi.keti.controller;

import com.ruoyi.common.core.domain.AjaxResult.Type;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.student.domain.SysStudent;
import com.ruoyi.student.service.ISysStudentService;
import com.ruoyi.system.domain.SysUser;
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
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.keti.domain.SysKeti;
import com.ruoyi.keti.service.ISysKetiService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 待选课题Controller
 *
 * @author ruoyi
 * @date 2020-04-17
 */
@Controller
@RequestMapping("/keti/keti")
public class SysKetiController extends BaseController {

  private String prefix = "keti/keti";

  @Autowired
  private ISysKetiService sysKetiService;


  @Autowired
  private ISysStudentService studentService;


  @Autowired

  private ISysTeacherService teacherService;

  @RequiresPermissions("keti:keti:view")
  @GetMapping()
  public String keti() {
    return prefix + "/keti";
  }

  /**
   * 查询待选课题列表
   */
  @RequiresPermissions("keti:keti:list")
  @PostMapping("/list")
  @ResponseBody
  public TableDataInfo list(SysKeti sysKeti) {
    startPage();
    List<SysKeti> list = sysKetiService.selectSysKetiList(sysKeti);
    return getDataTable(list);
  }

  /**
   * 导出待选课题列表
   */
  @RequiresPermissions("keti:keti:export")
  @Log(title = "待选课题", businessType = BusinessType.EXPORT)
  @PostMapping("/export")
  @ResponseBody
  public AjaxResult export(SysKeti sysKeti) {
    List<SysKeti> list = sysKetiService.selectSysKetiList(sysKeti);
    ExcelUtil<SysKeti> util = new ExcelUtil<SysKeti>(SysKeti.class);
    return util.exportExcel(list, "keti");
  }

  /**
   * 新增待选课题
   */
  @GetMapping("/add")
  public String add() {
    return prefix + "/add";
  }

  /**
   * 新增保存待选课题
   */
  @RequiresPermissions("keti:keti:add")
  @Log(title = "待选课题", businessType = BusinessType.INSERT)
  @PostMapping("/add")
  @ResponseBody
  public AjaxResult addSave(SysKeti sysKeti) {

    sysKeti.setCaozuoren(ShiroUtils.getSysUser().getUserName());
    sysKeti.setChuangjiantime(new SimpleDateFormat("yyyy年MM月dd日HH时mm分").format(new Date()));
    //todo 修改教师信息

    SysUser sysUser = ShiroUtils.getSysUser();
    String loginName = sysUser.getLoginName();
    SysTeacher teacher = new SysTeacher();
    teacher.setGonghao(loginName);
    List<SysTeacher> sysTeachers = teacherService.selectSysTeacherList(teacher);
    sysTeachers.get(0).setFabuKetiState("1");
    teacherService.updateSysTeacher(sysTeachers.get(0));

    return toAjax(sysKetiService.insertSysKeti(sysKeti));
  }

  /**
   * 修改待选课题
   */
  @GetMapping("/edit/{id}")
  public String edit(@PathVariable("id") Long id, ModelMap mmap) {
    SysKeti sysKeti = sysKetiService.selectSysKetiById(id);
    mmap.put("sysKeti", sysKeti);
    return prefix + "/edit";
  }

  /**
   * 修改保存待选课题
   */
  @RequiresPermissions("keti:keti:edit")
  @Log(title = "待选课题", businessType = BusinessType.UPDATE)
  @PostMapping("/edit")
  @ResponseBody
  public AjaxResult editSave(SysKeti sysKeti) {
    return toAjax(sysKetiService.updateSysKeti(sysKeti));
  }

  /**
   * 删除待选课题
   */
  @RequiresPermissions("keti:keti:remove")
  @Log(title = "待选课题", businessType = BusinessType.DELETE)
  @PostMapping("/remove")
  @ResponseBody
  public AjaxResult remove(String ids) {
    return toAjax(sysKetiService.deleteSysKetiByIds(ids));
  }

  /**
   * 选择课题
   *
   * @param id
   * @return
   */
  @PostMapping("/xuanze/{id}")
  @ResponseBody
  public AjaxResult xuanze(@PathVariable("id") Long id) {
    SysKeti keti = sysKetiService.selectSysKetiById(id);
    if (keti.getState().equals("1")) {
      return error("该课题已被别人选择!");

    }
    keti.setState("1");
    keti.setStudentName(ShiroUtils.getSysUser().getUserName());
    keti.setStudentId(ShiroUtils.getSysUser().getUserId());
    sysKetiService.updateSysKeti(keti);
    //todo 改变学生的信息

    SysUser sysUser = ShiroUtils.getSysUser();
    String loginName = sysUser.getLoginName();
    SysStudent student = new SysStudent();
    student.setXuehao(loginName);

    List<SysStudent> sysStudents = studentService.selectSysStudentList(student);
    sysStudents.get(0).setKetiName(keti.getTitle());
    sysStudents.get(0).setKetiId(id);
    sysStudents.get(0).setXuantiState("1");
    studentService.updateSysStudent(sysStudents.get(0));

    return success("选择成功");
  }


  // 任务书文件上传
  @RequestMapping("/upload")
  @ResponseBody
  public Map upload(@RequestParam("uploadfile") MultipartFile file) {

    Map map = new HashMap();
    // 获取原始名字
    String fileName1 = file.getOriginalFilename();

    // 获取后缀名
    // String suffixName = fileName.substring(fileName.lastIndexOf("."));
    // 文件保存路径
    String filePath = "D:/bishe/upload/";
    // 文件重命名，防止重复
    String fileName2 = filePath + fileName1;
    // 文件对象
    File dest = new File(fileName2);
    // 判断路径是否存在，如果不存在则创建
    if (!dest.getParentFile().exists()) {
      dest.getParentFile().mkdirs();
    }
    try {
      // 保存到服务器中
      file.transferTo(dest);
      map.put("status", true);
      map.put("url", fileName2);
      map.put("name", fileName1);
      return map;
    } catch (Exception e) {
      e.printStackTrace();
    }
    map.put("status", false);
    return map;
  }

  //下载任务书
  @RequestMapping("/download")
  @RequiresPermissions("keti:keti:down")
  public AjaxResult downLoad(HttpServletResponse response, String id)
      throws UnsupportedEncodingException {
    SysKeti keti = sysKetiService.selectSysKetiById(Long.valueOf(id));
    File file = new File(keti.getRenwushuUrl());
    if (file.exists()) { // 判断文件父目录是否存在

      response.setContentType("application/vnd.ms-excel;charset=UTF-8");
      response.setCharacterEncoding("UTF-8");
      // response.setContentType("application/force-download");
      response.setHeader(
          "Content-Disposition",
          "attachment;fileName=" + java.net.URLEncoder.encode(keti.getRenwushuName(), "UTF-8"));
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

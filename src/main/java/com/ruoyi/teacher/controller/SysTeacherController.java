package com.ruoyi.teacher.controller;

import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysPost;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysPostService;
import com.ruoyi.system.service.ISysRoleService;
import com.ruoyi.system.service.ISysUserService;
import java.util.List;
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
import com.ruoyi.teacher.domain.SysTeacher;
import com.ruoyi.teacher.service.ISysTeacherService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 教师Controller
 *
 * @author ruoyi
 * @date 2020-04-17
 */
@Controller
@RequestMapping("/teacher/teacher")
public class SysTeacherController extends BaseController {

  private String prefix = "teacher/teacher";

  @Autowired
  private ISysTeacherService sysTeacherService;

  @Autowired
  private ISysPostService postService;

  @Autowired
  private ISysUserService userService;

  @Autowired
  private ISysRoleService roleService;



  @Autowired
  private SysPasswordService passwordService;

  @RequiresPermissions("teacher:teacher:view")
  @GetMapping()
  public String teacher() {
    return prefix + "/teacher";
  }

  /**
   * 查询教师列表
   */
  @RequiresPermissions("teacher:teacher:list")
  @PostMapping("/list")
  @ResponseBody
  public TableDataInfo list(SysTeacher sysTeacher) {
    startPage();
    List<SysTeacher> list = sysTeacherService.selectSysTeacherList(sysTeacher);
    return getDataTable(list);
  }

  /**
   * 导出教师列表
   */
  @RequiresPermissions("teacher:teacher:export")
  @Log(title = "教师", businessType = BusinessType.EXPORT)
  @PostMapping("/export")
  @ResponseBody
  public AjaxResult export(SysTeacher sysTeacher) {
    List<SysTeacher> list = sysTeacherService.selectSysTeacherList(sysTeacher);
    ExcelUtil<SysTeacher> util = new ExcelUtil<SysTeacher>(SysTeacher.class);
    return util.exportExcel(list, "teacher");
  }

  /**
   * 新增教师
   */
  @GetMapping("/add")
  public String add(ModelMap map) {
    map.put("posts", postService.selectPostAll());
    return prefix + "/add";
  }

  /**
   * 新增保存教师
   */
  @RequiresPermissions("teacher:teacher:add")
  @Log(title = "教师", businessType = BusinessType.INSERT)
  @PostMapping("/add")
  @ResponseBody
  public AjaxResult addSave(SysTeacher sysTeacher) {
    //往用户表增加用户信息
    SysUser sysUser = new SysUser();
    sysUser.setUserName(sysTeacher.getName());
    sysUser.setLoginName(sysTeacher.getGonghao());
    sysUser.setSalt(ShiroUtils.randomSalt());
    sysUser.setPassword(passwordService.encryptPassword(sysUser.getLoginName(), "123456", sysUser.getSalt()));
    sysUser.setCreateBy(ShiroUtils.getLoginName());
    Long[] roleIds = new Long[1];
    roleIds[0] = 4L;
    sysUser.setRoleIds(roleIds);


    userService.insertUser(sysUser);

    return toAjax(sysTeacherService.insertSysTeacher(sysTeacher));
  }

  /**
   * 修改教师
   */
  @GetMapping("/edit/{id}")
  public String edit(@PathVariable("id") Long id, ModelMap map) {
    SysTeacher sysTeacher = sysTeacherService.selectSysTeacherById(id);
    map.put("sysTeacher", sysTeacher);
    List<SysPost> posts = postService.selectPostAll();
    map.put("posts", posts);



    if (!posts.isEmpty()) {
      for (SysPost post : posts) {

        if (post.getPostName().equals(sysTeacher.getZhiwei())) {
          post.setFlag(true);
        }

      }

    }
    return prefix + "/edit";
  }

  /**
   * 修改保存教师
   */
  @RequiresPermissions("teacher:teacher:edit")
  @Log(title = "教师", businessType = BusinessType.UPDATE)
  @PostMapping("/edit")
  @ResponseBody
  public AjaxResult editSave(SysTeacher sysTeacher) {
    return toAjax(sysTeacherService.updateSysTeacher(sysTeacher));
  }

  /**
   * 删除教师
   */
  @RequiresPermissions("teacher:teacher:remove")
  @Log(title = "教师", businessType = BusinessType.DELETE)
  @PostMapping("/remove")
  @ResponseBody
  public AjaxResult remove(String ids) {
    return toAjax(sysTeacherService.deleteSysTeacherByIds(ids));
  }
}

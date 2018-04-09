package com.tosit.ssm.service;

import com.tosit.ssm.entity.*;
import com.tosit.ssm.mapper.ExperienceMapper;
import com.tosit.ssm.mapper.UserMapper;
import com.tosit.ssm.mapper.UserOfficeMapper;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.io.File;
import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private ExperienceMapper experienceMapper;
    @Autowired
    private UserOfficeMapper userOfficeMapper;

    @Override
    public User selectByPrimaryKey(String userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public List<Experience> selectByIdToType(String userId) {
        return experienceMapper.selectByIdToType(userId);
    }

    @Override
    public List<User> selectChidaoBeforToday(String officeId) {
        return userMapper.selectChidaoBeforToday(officeId);
    }

    /*@Override
    public List<User> getUsers() {
        return userMapper.selectUsers();
    }*/

    /**
     * 通过id查询用户
     * @param id 用户id
     * @return 返回该用户的信息
     */
    @Override
    public User getUserById(String id) {
        return userMapper.selectByPrimaryKey(id);
    }

    /**
     * 修改指定用户的信息
     * @param user user对象的id指不能为空，如果其他某些属性为空则不修改
     * @return 返回影响的行数
     */
    @Override
    public int modifyUser(User user) {
        return userMapper.updateByPrimaryKey(user);
    }

    /**
     * 得到某个人未关联考勤工号的人
     * @param id
     * @return
     */
    @Override
    public List<User> findUserByClassIdNoKaoqinNum(String id) {
        Office office = new Office();
        office.setId(id);
       return userMapper.selectByClassNGH(office);
    }

    /**
     * 查询所有班级中的学生
     * @param officeId 班级id
     * @return 返回该班学生集合
     */
    @Override
    public List<User> findClassUser(String officeId) {
        return userMapper.selectUserByOfficeId(officeId);
    }

    @Override
    public List<User> findUserByOfficeId(String id) {
        return userMapper.selectUserByOfficeId(id);
    }

    @Override
    public List<User> findUserByDateAreaNoClass(Date startDate, Date endDate, Office office) {
        return userMapper.selectByTimeAreaNClass(startDate,endDate,office);
    }

    public List<User> findUserWithClassNotInGroup(Office office) {
        return userMapper.selectByClassGroup(office);
    }

    public List<UserVO> findUserWithGroup(Office office) {
        return userMapper.selectUsersWithGroup(office);
    }

    public List<User> findAllTeacherNoThisClass(Office office) {
        return userMapper.selectAllTeacherNoThisClass(office);
    }

    public void insertUserOfficeByGroup(UserOffice userOffice) {
        userOfficeMapper.insertUserOffice(userOffice);
    }

    public void deleteUserOfficeByGroup(UserOffice userOffice) {
        userOfficeMapper.updateByPrimaryKey(userOffice);
    }

    public UserOffice findUserOfficeId(UserOffice userOffice) {
        return userOfficeMapper.selectIdByUidAndOid(userOffice);
    }

    public List<UserOffice> findIdByOid(Office office) {
        return userOfficeMapper.selectIdByOid(office);
    }

    public List<User> findUserNoRuleByClass(String id) {
        return userMapper.selectNoGuize(id);
    }

    public List<User> findUserWithRuleByClass(Office office) {
        return userMapper.selectByClassChecking(office);
    }
    /**
     * 通过用户名 获取user
     *
     * @param username 用户名
     * @return 返回用户集合
     */
    @Override
    public User findsUserByUserName(String username) {
        return userMapper.selectByUsername(username);
    }

    public List<User> findStuNoLoginNameByClass(String id) {
        return userMapper.selectStuNoLoginNameByClass(id);
    }

    /**
     * 将考勤工号和用户关联
     *
     * @param file
     */
    @Override
    public void entryKaoqinId(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            XSSFWorkbook xssfSheets = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = xssfSheets.getSheetAt(0);
            int rowNum = sheet.getLastRowNum();
            for (int i=2;i<=rowNum;i++){
                XSSFRow row = sheet.getRow(i);
                String userId = row.getCell(0).getStringCellValue();
                String kaoqinId = row.getCell(2).getStringCellValue();
                User user = new User();
                user.setId(userId);
                user.setKaoqinCode(kaoqinId);
                userMapper.updateByPrimaryKey(user);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<UserCkRuleRecord> findAllLeaveByTime(Date time) {
        return userMapper.selectAllLeaveByTime(time);
    }

    @Override
    public UserRole findRoleByName(String loginName) {
        return userMapper.selectRoleByUsername(loginName);
    }

    @Override
    public List<User> findStuByClassAndName(String name, String id) {
        return userMapper.selectStuByClassAndName(name, id);
    }
}

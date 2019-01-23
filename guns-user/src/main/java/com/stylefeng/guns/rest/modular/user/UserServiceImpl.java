package com.stylefeng.guns.rest.modular.user;

import com.alibaba.dubbo.config.annotation.Service;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.stylefeng.guns.api.user.UserAPI;
import com.stylefeng.guns.api.user.vo.UserInfoModel;
import com.stylefeng.guns.api.user.vo.UserModel;
import com.stylefeng.guns.core.util.MD5Util;
import com.stylefeng.guns.rest.common.persistence.dao.UserMapper;
import com.stylefeng.guns.rest.common.persistence.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Justin
 * 2019/1/9  22:09
 */
@Component
@Service(interfaceClass = UserAPI.class)
public class UserServiceImpl implements UserAPI {

    @Autowired
    private UserMapper userMapper;

    @Override
    public int login(String username, String password) {
        // 根据登陆账号获取数据库信息
        User user = new User();
        user.setUserName(username);

        User result = userMapper.selectOne(user);

        // 获取到的结果，然后与加密以后的密码做匹配
        if (result != null && result.getUuid() > 0) {
            String md5Password = MD5Util.encrypt(password);
            if (result.getUserPwd().equals(md5Password)) {
                return result.getUuid();
            }
        }
        return 0;
    }

    @Override
    public boolean register(UserModel userModel) {
        // 将注册信息实体转换为数据实体[mooc_user_t]
        User user = new User();
        user.setUserName(userModel.getUsername());
        user.setEmail(userModel.getEmail());
        user.setAddress(userModel.getAddress());
        user.setUserPhone(userModel.getPhone());
        // 创建时间和修改时间 -> current_timestamp

        // 数据加密 【MD5混淆加密 + 盐值 -> Shiro加密】
        String md5Password = MD5Util.encrypt(userModel.getPassword());
        user.setUserPwd(md5Password); // 注意

        // 将数据实体存入数据库
        Integer insert = userMapper.insert(user);
        if (insert > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean checkUsername(String username) {
        EntityWrapper<User> entityWrapper = new EntityWrapper<>();
        entityWrapper.eq("user_name",username);
        Integer result = userMapper.selectCount(entityWrapper);
        if(result!=null && result>0){
            return false;
        }else{
            return true;
        }
    }

    @Override
    public UserInfoModel getUserInfo(int uuid) {
        // 根据主键查询用户信息 [MoocUserT]
        User user = userMapper.selectById(uuid);
        // 将MoocUserT转换UserInfoModel
        UserInfoModel userInfoModel = do2UserInfo(user);
        // 返回UserInfoModel
        return userInfoModel;
    }

    @Override
    public UserInfoModel updateUserInfo(UserInfoModel userInfoModel) {
        // 将传入的参数转换为DO 【MoocUserT】
        User user = new User();
        user.setUuid(userInfoModel.getUuid());
        user.setNickName(userInfoModel.getNickname());
        user.setLifeState(Integer.parseInt(userInfoModel.getLifeState()));
        user.setBirthday(userInfoModel.getBirthday());
        user.setBiography(userInfoModel.getBiography());
        user.setBeginTime(null);
        user.setHeadUrl(userInfoModel.getHeadAddress());
        user.setEmail(userInfoModel.getEmail());
        user.setAddress(userInfoModel.getAddress());
        user.setUserPhone(userInfoModel.getPhone());
        user.setUserSex(userInfoModel.getSex());
        user.setUpdateTime(null);

        // DO存入数据库
        Integer integer = userMapper.updateById(user);
        if(integer>0){
            // 将数据从数据库中读取出来
            UserInfoModel userInfo = getUserInfo(user.getUuid());
            // 将结果返回给前端
            return userInfo;
        }else{
            return null;
        }
    }

    private UserInfoModel do2UserInfo(User user){
        UserInfoModel userInfoModel = new UserInfoModel();
        userInfoModel.setUuid(user.getUuid());
        userInfoModel.setHeadAddress(user.getHeadUrl());
        userInfoModel.setPhone(user.getUserPhone());
        userInfoModel.setUpdateTime(user.getUpdateTime().getTime());
        userInfoModel.setEmail(user.getEmail());
        userInfoModel.setUsername(user.getUserName());
        userInfoModel.setNickname(user.getNickName());
        userInfoModel.setLifeState(""+user.getLifeState());
        userInfoModel.setBirthday(user.getBirthday());
        userInfoModel.setAddress(user.getAddress());
        userInfoModel.setSex(user.getUserSex());
        userInfoModel.setBeginTime(user.getBeginTime().getTime());
        userInfoModel.setBiography(user.getBiography());
        return userInfoModel;
    }
}

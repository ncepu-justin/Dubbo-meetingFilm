package com.stylefeng.guns.rest.common;

/**
 * Created by Justin
 * 2019/1/10  16:17
 */
public class CurrentUser {
    // 线程绑定的存储空间,使用InheritableThreadLocal 如果出现线程切换，能保存需要数据
    private static final InheritableThreadLocal<String> threadLocal = new InheritableThreadLocal<>();
    public static void saveUserId(String userId){
        threadLocal.set(userId);
    }
    public static String getCurrentUser(){
        return threadLocal.get();
    }
    // 将用户信息放入存储空间
//    public static void saveUserInfo(UserInfoModel userInfoModel){
//        threadLocal.set(userInfoModel);
//    }
//
//    // 将用户信息取出
//    public static UserInfoModel getCurrentUser(){
//        return threadLocal.get();
//    }

}

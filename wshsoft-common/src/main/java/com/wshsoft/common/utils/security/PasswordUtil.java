package com.wshsoft.common.utils.security;

/**
 * @author: yadong.zhang
 * @date: 2017/12/15 17:03
 */
public class PasswordUtil {

    /**
     * 安全密码(UUID生成)，作为盐值用于用户密码的加密
     */
    public static final String _SECURITY_KEY = "929123f8f17944e8b0a531045453e1f1";
    
    /**
     * AES 加密
     * @param password
     *         未加密的密码
     * @param salt
     *         盐值，默认使用用户名就可
     * @return
     * @throws Exception
     */
    public static String encrypt(String password, String salt) throws Exception {
        return AesUtil.encrypt(Md5Utils.MD5(salt + _SECURITY_KEY), password);
    }

    /**
     * AES 解密
     * @param encryptPassword
     *         加密后的密码
     * @param salt
     *         盐值，默认使用用户名就可
     * @return
     * @throws Exception
     */
    public static String decrypt(String encryptPassword, String salt) throws Exception {
        return AesUtil.decrypt(Md5Utils.MD5(salt + _SECURITY_KEY), encryptPassword);
    }
}

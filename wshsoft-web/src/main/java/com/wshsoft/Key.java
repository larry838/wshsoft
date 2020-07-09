package com.wshsoft;

import java.security.NoSuchAlgorithmException;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

import org.apache.shiro.codec.Base64;

public class Key {

	public static void main(String[] args) throws NoSuchAlgorithmException {
		// TODO Auto-generated method stub
		KeyGenerator keygen = KeyGenerator.getInstance("AES"); 
		SecretKey deskey = keygen.generateKey(); 
		System.out.println(Base64.encodeToString(deskey.getEncoded()));
	}

}

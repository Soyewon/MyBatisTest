package org.example;

import java.io.IOException;
import java.io.InputStream;
import java.lang.module.ResolutionException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Main {
	public static void main(String[] args) {
		System.out.println(1);
		InputStream is = null;
		SqlSessionFactory sf = null;
		SqlSession session = null;
		int result = 0;
		try {
			is = Resources.getResourceAsStream("mybatis-config.xml");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
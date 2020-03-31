package com.trainingbasket.services;

import java.util.Properties;

import org.springframework.stereotype.Component;


@Component
public class LoginService  {
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("trainingbasket") && password.equals("dummy");
	}
}

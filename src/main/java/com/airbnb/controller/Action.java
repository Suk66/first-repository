package com.airbnb.controller;

import java.io.IOException;

import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	
	public ActionForward execute(HttpServletRequest request,
								HttpServletResponse response) throws IOException;

}

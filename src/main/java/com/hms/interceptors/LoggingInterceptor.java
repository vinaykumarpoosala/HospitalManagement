package com.hms.interceptors;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoggingInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
       

        String sessionId = null;

        String token = (String)request.getSession().getAttribute("Token");

    	if(null==token || token.equals("null"))
    	{
    		System.out.println("in if condition redirecting to home");
    		request.setAttribute("message", "please login to continue any operations");
    		request.getRequestDispatcher("/home").include(request, response);
    		return false;
    	}
    		

        if(null!=request.getCookies()){
        	System.out.println();
        	
            for(Cookie cookie: request.getCookies()){
                if("JSESSIONID".equals(cookie.getName())){
                    sessionId = cookie.getValue();
                }
            }
        }

        System.out.println("Incoming request data log: session: "+sessionId+
                " at "+ new Date()+" for "+request.getRequestURI());

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("in post handle");
    }
}


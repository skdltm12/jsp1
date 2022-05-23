package com.company.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(filterName = "encryptFilter1", urlPatterns = { "/EncryptFilter1" })
public class EncryptFilter1 implements Filter {

    public EncryptFilter1() {

    }
	public void destroy() {

	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		chain.doFilter(request, response);
	}
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}

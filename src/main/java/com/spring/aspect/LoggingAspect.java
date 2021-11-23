package com.spring.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.jboss.logging.Logger;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {

	// setup logger
	private Logger theLogger = Logger.getLogger(getClass().getName());
	
	// setup pointcut declarations
	@Pointcut("execution(* com.spring.controller.*.*(..))")
	private void loggingForController() {}
	
	@Pointcut("execution(* com.spring.dao.*.*(..))")
	private void loggingForDAO() {}
	
	@Pointcut("execution(* com.spring.service.*.*(..))")
	private void loggingForService() {}
	
	@Pointcut("loggingForController() || loggingForDAO() || loggingForService()")
	private void loggingForAppFlow() {}
	
	// add @Before advice
	@Before("loggingForAppFlow()")
	public void before(JoinPoint theJoinPoint) {
		
		// display method that is calling
		String theMethod = theJoinPoint.getSignature().toShortString();
		theLogger.info("======>> in @Before: calling method: " + theMethod);
		
		// get the arguments 
		Object[] args = theJoinPoint.getArgs();
		
		// loop through and display args
		for(Object tempArg : args) {
			theLogger.info("=====>> argument: " + tempArg);
		}
		
	}
	
	// add @AfterReturning advice
	@AfterReturning(
			pointcut="loggingForAppFlow()",
			returning="result")
	public void afterReturning(JoinPoint theJoinPoint, Object result) {
		
		// display method that is returning from
		String theMethod = theJoinPoint.getSignature().toShortString();
		theLogger.info("======>> in @Before: calling method: " + theMethod);
		
		// display data returned 
		theLogger.info("=====>> result: " + result);
		
	}
	
}

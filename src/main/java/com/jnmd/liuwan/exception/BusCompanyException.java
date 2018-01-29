package com.jnmd.liuwan.exception;

public class BusCompanyException extends Exception{
	public BusCompanyException() {
		super();
	}

	public BusCompanyException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public BusCompanyException(String message, Throwable cause) {
		super(message, cause);
	}

	public BusCompanyException(String message) {
		super(message);
	}

	public BusCompanyException(Throwable cause) {
		super(cause);
	}
}

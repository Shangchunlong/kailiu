package com.jnmd.liuwan.exception;

public class BusMessageException extends Exception{
	public BusMessageException() {
		super();
	}

	public BusMessageException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public BusMessageException(String message, Throwable cause) {
		super(message, cause);
	}

	public BusMessageException(String message) {
		super(message);
	}

	public BusMessageException(Throwable cause) {
		super(cause);
	}
}

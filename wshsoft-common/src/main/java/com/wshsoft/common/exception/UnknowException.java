package com.wshsoft.common.exception;

/**
 * Created by Larry xie
 */
public class UnknowException extends   RuntimeException {
    public UnknowException() {
        super();
    }

    public UnknowException(String message) {
        super(message);
    }
}

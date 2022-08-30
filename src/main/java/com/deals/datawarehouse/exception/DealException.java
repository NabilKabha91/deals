package com.deals.datawarehouse.exception;

/***
 * @author nabil
 * The exception would be thrown when something goes wrong
 */
public class DealException extends Exception {

    private String message;

    public DealException(String message){
        super(message);
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

}

package com.jnmd.liuwan.utils;

import java.util.Calendar;

public class LiuWanUtils {
    public static int dayNum(Calendar begin, Calendar end) {
        int eyear = Integer.parseInt(String.valueOf(end.get(Calendar.YEAR)));
        int emonth = Integer.parseInt(String.valueOf(end.get(Calendar.MONTH) + 1));
        int eday = Integer.parseInt(String.valueOf(end.get(Calendar.DAY_OF_MONTH)));
        int byear = Integer.parseInt(String.valueOf(begin.get(Calendar.YEAR)));
        int bmonth = Integer.parseInt(String.valueOf(begin.get(Calendar.MONTH) + 1));
        int bday = Integer.parseInt(String.valueOf(begin.get(Calendar.DAY_OF_MONTH)));
        int day = 0, month;
        if (eyear == byear) {
            if (emonth == bmonth) {
                day = eday - bday;
            } else {
                month = emonth - bmonth;
                if (bmonth == 3 || bmonth == 5 || bmonth == 8 || bmonth == 10) {
                    day = 30 - bday + eday;
                } else if (bmonth == 1) {
                    if ((byear % 4 == 0 && byear % 100 != 0) || byear % 400 == 0)
                        day = 29 - bday + eday;
                    else
                        day = 28 - bday + eday;
                } else {
                    day = 31 - bday + eday;
                }
            }
        } else {
            month = 11 - bmonth;
            if (month == 0) {
                day = 31 - bday;
                for (int i = 0; i < emonth; i++) {
                    if (emonth == 3 || emonth == 5 || emonth == 8 || emonth == 10) {
                        day += 30;
                    } else if (emonth == 1) {
                        if ((eyear % 4 == 0 && eyear % 100 != 0) || eyear % 400 == 0)
                            day += 29;
                        else
                            day += 28;
                    } else {
                        day += 31;
                    }
                }
                day += eday;
            }
        }
        return day;
    }
}

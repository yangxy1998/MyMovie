package util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Util {

    public static String getDate(){
        Date date=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aa");
        return sdf.format(date);
    }

}
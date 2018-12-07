package util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 工具类
 */
public class Util {

    /**
     * 用于生成一个时间字符串
     * @return 时间字符串 格式是yyyy-MM-dd HH:mm:ss aa
     */
    public static String getDate(){
        Date date=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aa");
        return sdf.format(date);
    }

}
 //Adapted from Emerson, B. (2022) IS3312, Web Application Development [Source code].
//Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code]. 

package utilities;


public class StringUtils {
    
    public static boolean isStringEmpty(String input){
        if (input == null){
            return true;
        }
        else if (input.length()==0){
            return true;
        }
        else return false;
    }
    
}

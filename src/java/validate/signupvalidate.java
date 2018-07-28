package validate;

import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class signupvalidate {
    public boolean validationusername(String a)
    {
        checksignup obj=new checksignup();
            boolean ob=obj.validateusername(a);
            return ob;
    }
    public boolean validationemail(String a)
    {
        checksignup obj=new checksignup();
            boolean ob=obj.validatemail(a);
            return ob;
    }
    public boolean signupuser(String a,String b,String c,String d,String e,String f,String g)
    {
        checksignup obj=new checksignup();
            boolean ob=false;
        try {
            ob = obj.signup(a,b,c,d,e,f,g);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(signupvalidate.class.getName()).log(Level.SEVERE, null, ex);
        }
            return ob;
    }
}

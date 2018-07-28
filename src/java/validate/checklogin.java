package validate;




public class checklogin {
    
    
    public boolean logincheck(String a, String b, String c)
    {
       db_check checking=new db_check();
       boolean ob=checking.checkin(a,b,c);
       return ob;
    }
    
}

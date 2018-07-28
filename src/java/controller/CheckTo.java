
package controller;

import model.Checkisadmin;

public class CheckTo {
    public Boolean checkto(String To)
    {
        Checkisadmin dd=new Checkisadmin();
        boolean bb=dd.checkadminavailable(To);
        return bb;
    }
    public void sendmessage(String to,String from,String subject,String body)
    {
        Checkisadmin dd=new Checkisadmin();
        dd.sendtoadmin(to,from,subject,body);
        
    }
}

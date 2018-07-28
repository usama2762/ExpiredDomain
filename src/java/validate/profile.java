/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validate;

/**
 *
 * @author Usama Jamil
 */
public class profile {
    public String pic(String a)
    {   
      DBprofile checking=new DBprofile();
      String ss= checking.picreturn(a); 
      return ss;
    }
}

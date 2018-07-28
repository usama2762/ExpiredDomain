package controller;

import model.adminprofileDB;
import model.doctorprofileDB;

public class admineditprofile {
    public  boolean Editprofile(String username,String first,String last,String pass,String im)
    {
        adminprofileDB obj=new adminprofileDB();
        boolean obj1=obj.editprofile(username,first,last,pass,im);
        return obj1;
    }
}


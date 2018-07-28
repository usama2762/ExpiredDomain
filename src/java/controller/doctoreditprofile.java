package controller;

import model.doctorprofileDB;

public class doctoreditprofile {
    public  boolean Editprofile(String username,String first,String last,String pass,String im)
    {
        doctorprofileDB obj=new doctorprofileDB();
        boolean obj1=obj.editprofile(username,first,last,pass,im);
        return obj1;
    }
}

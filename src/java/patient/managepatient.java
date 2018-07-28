package patient;
public class managepatient {
 public boolean addpatient(String first,String last,String age,String prehis,String contact,String gender,String detail,String doctordiagnosis,String comment)
 {
     AddPatient obj=new AddPatient();
     boolean result=obj.add(first,last,age,prehis,contact,gender,detail,doctordiagnosis,comment);
                return result;
 }
 public boolean updatepatient(Integer id,String first,String last,String age,String prehis,String contact,String gender,String detail,String doctordiagnosis,String comment)
 {
     AddPatient obj=new AddPatient();
     boolean result=obj.update(id,first,last,age,prehis,contact,gender,detail,doctordiagnosis,comment);
                return result;
 }
 public boolean deletepatient(String id)
 {
     DeletePatient obj=new DeletePatient();
     boolean result=obj.delete(id);
                return result;
 }
 public boolean deleteallpatients()
 {
     DeletePatient obj=new DeletePatient();
     boolean result=obj.deleteall();
                return result;
 }
}

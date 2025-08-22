interface collegedata
{
    String college="XYZ";			//variables declared inide interface are static and final(should be initialised)
    public void collegeDetails();
 
    default public void studentDetails()
    {
        System.out.println("Students information incontext of college");
    }
}
 
interface  hosteldata
{
    public void hostelDetails();
    default public void studentDetails(){
        System.out.println("Students information incontext of hostel");
    }
}

abstract class SampleAbstract
 {
    public SampleAbstract() {
    }
   
    abstract public void abstractMethod();     
 }

class studentData extends SampleAbstract implements collegedata,hosteldata
{
    @Override
    public void  abstractMethod(){}
 
    @Override
    public void collegeDetails(){
       	//college="";					cannot modify as it is static and final.
        System.out.println(college);
    }
    @Override
    public void hostelDetails(){}
 
    @Override
 
    public void studentDetails()
    {
        System.out.println("student details");
        collegedata.super.studentDetails();
        hosteldata.super.studentDetails();
    }
}
 
 
class DemoInterface
{
    public static void main(String[] args) {
        studentData obj=new studentData();
        obj.studentDetails();
       
    }
}
 
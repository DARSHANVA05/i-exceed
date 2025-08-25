import java.lang.reflect.Method;

class PrivateData{

	private int accountNo = 0001;
	
	private void displayAccNo(String name){
		System.out.println("Account number: "+accountNo);
		System.out.println("Account name: "+name);
	}

}

class ReflectDemo{

	public static void main(String args[]) throws Exception{

		Class c = Class.forName("PrivateData");					//Creating an instance of Class
		Object obj = c.newInstance();						//Creating an instance of Object class
		Method method = c.getDeclaredMethod("displayAccNo",String.class);	//Creating an instance of Method class and specifing variables
		method.setAccessible(true);						//setting the method as accessible
		method.invoke(obj,"test");						//calling the method by passing parameters

	}

}
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

		Class c = Class.forName("PrivateData");
		Object obj = c.newInstance();
		Method method = c.getDeclaredMethod("displayAccNo",String.class);
		method.setAccessible(true);
		method.invoke(obj,"test");

	}

}
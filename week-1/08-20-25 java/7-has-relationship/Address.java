class Address
{ 
    String streetName,city;
    int pin;
    Address(String streetName,String city,int pin)
	{
	   this.streetName = streetName;
	   this.city = city;
	   this.pin = pin;
	}
    public void displayAddress()
	{
	  System.out.println("Street name: "+streetName);
	  System.out.println("City: "+city);
	  System.out.println("Pincode: "+pin);
	}
}
 
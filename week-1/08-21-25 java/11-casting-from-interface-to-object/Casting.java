interface BankOperations{
	public void deposit(int amount);
	public void withdraw(int amount);
}

class Bank implements BankOperations{

	int balance = 10000;
	String bankName = "ABC";
		
		//Overridden methods
		public void deposit(int amount){
			balance += amount;
		}
		public void withdraw(int amount){
			balance -= amount;
		}
	
		//Concrete methods
		public int fetchBalance(){
			return balance;
		}		

		public String fetchBankName(){
			return bankName;
		}		

		
}

class Casting{

	public static void main(String args[]){

		BankOperations costumer = new Bank();
		costumer.deposit(5000);
		costumer.withdraw(4000);

		System.out.println(((Bank)costumer).fetchBalance());
		System.out.println(((Bank)costumer).fetchBankName());
	
	}

}
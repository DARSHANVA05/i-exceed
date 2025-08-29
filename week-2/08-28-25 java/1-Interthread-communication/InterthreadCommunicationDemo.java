class InterthreadCommunicationDemo{
    
	public static void main(String[] args) {

        	Customer customer = new Customer();

        	new Thread(() -> customer.withdraw(10000, "WithdrawThread-1")).start();	
        	new Thread(() -> customer.withdraw(5000, "WithdrawThread-2")).start();
        	new Thread(() -> customer.withdraw(7000, "WithdrawThread-3")).start();

	        try { Thread.sleep(1000); } catch (InterruptedException e) {}

                new Thread(() -> customer.deposit(5000, "DepositThread-1")).start();
        	new Thread(() -> customer.deposit(10000, "DepositThread-2")).start();
        	new Thread(() -> customer.deposit(8000, "DepositThread-3")).start();

       		new Thread(() -> customer.checkBalance("BalanceChecker")).start();
    }
}

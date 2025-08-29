class Customer {
    int amount = 0;

    synchronized void withdraw(int amount, String threadName) {

        System.out.println(threadName + ": Trying to withdraw " + amount);

        while (this.amount < amount) {  

            System.out.println(threadName + ": Insufficient balance. Waiting...");

            try {
                wait();  
            } catch (InterruptedException e) {
                System.out.println(threadName + ": Interrupted while waiting.");
            }

        }

        this.amount -= amount;
        System.out.println(threadName + ": Withdrawal successful. Remaining balance: " + this.amount);

    }

    synchronized void deposit(int amount, String threadName) {
  
        System.out.println(threadName + ": Depositing " + amount);
        this.amount += amount;
        System.out.println(threadName + ": Deposit completed. Current balance: " + this.amount);
        notifyAll();  											// notify all waiting threads
  
  }

    synchronized void checkBalance(String threadName) {
        System.out.println(threadName + ": Current balance is " + this.amount);
    }
}

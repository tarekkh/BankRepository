package lab.bank.BankSystem;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Bank b =new Bank();
		
		Interest fixed =new FixedInterest();
		Interest variable =new VariableInterest();
		
		
		
		Account acc1=new SavingAccount(fixed);
		acc1.setAmount(20000);
		
		Account acc5=new SavingAccount(fixed);
		acc5.setAmount(60000);
		
		
		
		Account acc2=new SavingAccount(fixed);
	    acc2.setAmount(10000);
	
		
		
		Account acc3=new  CreditAccount(variable);
	    acc3.setAmount(26);
		
		
		Account acc4=new  CreditAccount(variable);
		acc4.setAmount(1000000);
		

		Account acc7=new  CreditAccount(variable);
		acc7.setAmount(20000);
		
		
		
		
		b.addAccount(acc1);
		b.addAccount(acc2);
		b.addAccount(acc5);
		
		b.addAccount(acc3);
		b.addAccount(acc4);
		b.addAccount(acc7);
		
		
		
		b.printAccountInformation();
		
		System.out.println("change the interest method");
		
		acc7.setInterest(fixed);
		System.out.println(acc7.getInterest().getInterest(acc7.getAmount()));
		System.out.println(acc7.getAmount());
		
		
		
		
		
		
		
		
		

	}

}

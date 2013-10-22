package lab.bank.BankSystem;

public class SavingAccount extends Account {
	
	
	public SavingAccount(Interest interest)
	{
		super(interest);
		setType("Saving Account");
				
	}
	
	
	
	public  boolean withdraw (double amount)
	{
		boolean check=false;
		double result =getAmount()-amount;
		if (result > 0)
		{
			setAmount(result);
			check =true;
		}
		
	
		return check;
	}
	
	
}

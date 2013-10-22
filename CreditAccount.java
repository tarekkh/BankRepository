package bank;

public class CreditAccount extends Account {
	

	
	public CreditAccount(Interest interest) {
		super(interest);
	    setType("Credit Account");
		
			
	}
	
	
		
	public void setAmount(double amount)
	{
		super.setAmount(amount);
	}
	
	
	public boolean deposit 	(double amount)
	{
		return super.deposit(amount);
		
	}
	
	
	public  boolean withdraw (double amount)
	{
		boolean check=false;
		try{
		double result =getAmount()-amount;
		setAmount(result);
		check =true;
		}
		catch (Exception e)
		{
			check =false;
		}
		
		return check;
	}
	
	
}

package bank;

public class Saving extends Account {
	
	
	public Saving(Interest interest)
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

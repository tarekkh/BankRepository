package lab.bank.BankSystem;


public abstract class Account {
	int id;
	double amount;
	Interest interest;
	String type ;
	
private static int caid=1;
	
	public Account(Interest interest){
		this.interest=interest;
		setId(caid);
		caid=caid+1;
	}
	
		
	
	public String getType() {
		return type;
	}



	protected void setType(String type) {
		this.type = type;
	}
	
	
	public int getId() {
		return id;
	}
	private void setId(int id) {
		this.id = id;
	}
	
	
	public double getAmount() {
		return amount+ getInterestAmount(amount);
	}
	
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	
	public Interest getInterest() {
		return interest;
	}



	public void setInterest(Interest interest) {
		this.interest = interest;
	}
	
	public double getInterestAmount(double ammount)
	{
		return (amount * (getInterest().getInterest(ammount)/100));
	}
	
	




	public abstract boolean withdraw (double amount);
	
	
	public boolean deposit 	(double amount)
	{
		boolean add =false;
		try{
			this.amount=this.amount+amount;
			add=true;
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
			
		}
		
		
		return add;
	}
	
};

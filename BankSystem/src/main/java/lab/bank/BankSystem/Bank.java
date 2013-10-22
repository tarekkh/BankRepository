package lab.bank.BankSystem;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Bank {
	List<Account> accounts;
	
	Bank()
	{
		accounts = new ArrayList<Account>();
	}
	
	public void addAccount (Account c)

	{
		accounts.add(c);
	}
	
	public void printAccountInformation()
	{
		Iterator iterator =accounts.listIterator();
		Account acc=null;
		while (iterator.hasNext())
		{
			acc=(Account) iterator.next();
			System.out.println("account id ="+acc.getId());
			System.out.println("account type ="+acc.getType());
			System.out.println("account amount ="+acc.getAmount());
			System.out.println("account interest ="+acc.getInterest().getInterest(acc.getAmount()));
			
			System.out.println("***************************************");
			
		}
	}
	
	public Account getAccount(int id)
	{
		Account acc=null;
		Iterator iterator =accounts.listIterator();
		while (iterator.hasNext())
		{
			acc=(Account) iterator.next();
			if (acc.getId()==id)
			{
				break;
			}
			
		}
		
		
		
		return acc;
		
	}
	
}

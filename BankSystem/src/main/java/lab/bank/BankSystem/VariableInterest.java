package lab.bank.BankSystem;

public class VariableInterest implements Interest {

	
	public double getInterest(double amount) {
		double inter=0;
		if (amount<10000)
			inter=3;
			else
				if (amount>10000 && amount<50000)
					inter=10;
				else 
					if (amount>50000)
						inter=12;
		return inter;
	}
	

}

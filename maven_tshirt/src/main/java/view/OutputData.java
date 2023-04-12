package view;

import java.util.List;
import model.Tshirt;

public class OutputData {

	
	public void viewTshirts(List<Tshirt> tshirtlist) {
		
		System.out.println("\n \t\t ***** PRODUCT INFORMATION *****"+"\n");
		
		for (Tshirt f : tshirtlist) {
			System.out.println("ID \t\t" + f.getId());
			System.out.println("NAME \t\t" + f.getName());
			System.out.println("COLOR\t\t" + f.getColor());
			System.out.println("GENDER\t\t" + f.getGender());
			System.out.println("SIZE\t\t" + f.getSize());
			System.out.println("PRICE\t\t" + f.getPrice());
			System.out.println("RATING \t\t" + f.getRating());
			System.out.println("AVAILABILITY\t" + f.getAvailability() + "\n");
		}
		if (tshirtlist.isEmpty()) {
			System.out.println("Oops!! T-Shirt is Not Available.");
		}
	}
}

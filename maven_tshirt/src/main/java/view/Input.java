package view;

import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import controller.SelectTshirts;

public class Input extends Thread {
	
	static List<String> FileName;

	/**
	 * 
	 */
	public void run() {
		FileName = new LinkedList<String>();
		final File folder = new File(".\\src\\main\\resources\\csv_files\\");

		for (final File fileEntry : folder.listFiles()) {

			if (fileEntry.getName().contains(".csv"))
				FileName.add(".\\src\\main\\resources\\csv_files\\" + fileEntry.getName());
		}
	}

	/**
	 * 
	 * @param args
	 * @throws NumberFormatException
	 * @throws IOException
	 */
	public static void main(String args[]) throws NumberFormatException, IOException {

		boolean flag = false;
		String color;
		String size;
		String gender;
		String OutputPreference;
		String choice;

		ScheduledExecutorService executor = Executors.newSingleThreadScheduledExecutor();
		Scanner sc = new Scanner(System.in);
		Input tshirtThread = new Input();
		tshirtThread.start();

		executor.scheduleAtFixedRate(tshirtThread, 0, 5, TimeUnit.SECONDS);

		do {

			System.out.println("Enter the color");
			color = sc.nextLine().toUpperCase();

			System.out.println("Enter the size");
			size = sc.nextLine().toUpperCase();

			while (flag != true) {
				if (size.equals("S") || size.equals("M") || size.equals("L") || size.equals("XL")
						|| size.equals("XXL")) {
					flag = true;
					break;
				} else {
					System.out.println("Enter the size Between (S/M/L/XL/XXL)");
					size = sc.nextLine().toUpperCase();
				}
			}
			flag = false;

			System.out.println("Enter the gender");
			gender = sc.nextLine().toUpperCase();

			while (flag != true) {
				if (gender.equals("M") || gender.equals("F") || gender.equals("U")) {
					flag = true;
					break;
				} else {
					System.out.println("Enter the  gender(M/F/U) only");
					gender = sc.nextLine().toUpperCase();
				}
			}
			flag = false;

			System.out.println("Enter the Output Preference 1.PRICE  2.RATING  3.PRICE and RATING");
			OutputPreference = sc.nextLine();

			while (flag != true) {
				if (OutputPreference.equals("1") || OutputPreference.equals("2") || OutputPreference.equals("3")) {
					flag = true;
					break;
				} else {
					System.out.println("Enter the  OutputPreference( 1.PRICE  2.RATING  3.PRICE and RATING) only");
					OutputPreference = sc.nextLine();
				}
			}
			flag = false;

			SelectTshirts findtshirt = new SelectTshirts();

			for (String file : FileName) {
				findtshirt.find(file, color, size, gender);

			}
			findtshirt.updateView(OutputPreference);
			findtshirt.print();
			System.out.println("\n \t\t*********");
			System.out.println("Do you want to continue (y/n):");
			choice = sc.nextLine();
			choice = choice.toUpperCase().trim();
		} while (choice.equals("Y"));

		sc.close();
	}
}
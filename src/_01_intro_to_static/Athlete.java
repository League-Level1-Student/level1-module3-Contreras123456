package _01_intro_to_static;

public class Athlete {


	static int nextBibNumber;
	static String raceLocation = "New York";
	static String raceStartTime = "9.00am";

	String name;
	int speed;
	int bibNumber;

	Athlete(String name, int speed) {
		this.name = name;
		this.speed = speed;
	}

	public static void main(String[] args) {
		Athlete microwave = new Athlete("yoda",100);
		Athlete fortnite = new Athlete("phil swift", 10);
		Athlete.nextBibNumber = 1;
		microwave.bibNumber = Athlete.nextBibNumber;
		Athlete.nextBibNumber++;
		fortnite.bibNumber = Athlete.nextBibNumber;
		Athlete.raceLocation = "mcdonalds";
		System.out.println(microwave.name);
		System.out.println(fortnite.name);
		System.out.println(microwave.bibNumber);
		System.out.println(fortnite.bibNumber);
		System.out.println(microwave.raceLocation);
		System.out.println(fortnite.raceLocation);
		// create two athletes
		// print their names, bibNumbers, and the location of their race.
	}
}

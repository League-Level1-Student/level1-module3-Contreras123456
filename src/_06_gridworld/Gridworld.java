package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World world  = new World();
		world.show();
		Bug bug = new Bug();
		Location location = new Location(5,5);
		world.add(location, bug);
		Random random = new Random();
		Location location2 = new Location(random.nextInt(10),random.nextInt(10));
		world.add(location2, new Bug(Color.blue));
		
		bug.turn();
		bug.turn();
		Flower flower = new Flower();
		Flower flower2 = new Flower();
		Location location3 = new Location(6,5);
		Location location4 = new Location(4,5);
		world.add(location3, flower);
		world.add(location4, flower2);
		for (int i = 0; i < 10; i++) {
			for (int j = 0; j < 10; j++) {
				world.add(new Location(i,j), new Flower());

			}
		}
	}
}

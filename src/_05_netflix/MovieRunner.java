package _05_netflix;

public class MovieRunner {

	public static void main(String[] args) {
		Movie movie = new Movie("Bob the Builder", 5);
		Movie movie2 = new Movie("Emoji Movie", 1);
		Movie movie3 = new Movie("Bee Movie", 5);
		Movie movie4 = new Movie("Squidward", 4);
		Movie movie5 = new Movie("Elmo's World", 5);
		
		System.out.println(movie.getTicketPrice());
		System.out.println(movie2.getTicketPrice());
		
		NetflixQueue netflixqueue = new NetflixQueue();
		netflixqueue.addMovie(movie);
		netflixqueue.addMovie(movie2);
		netflixqueue.addMovie(movie3);
		netflixqueue.addMovie(movie4);
		netflixqueue.addMovie(movie5);
		netflixqueue.printMovies();
		System.out.println("the best movie is: " + netflixqueue.getBestMovie());
		System.out.println("the second best movie is: " + netflixqueue.getSecondBestMovie());
	}
}

package domain;

import java.util.List;

public class FootballTeams {
    private int id;
    private String name;
    private String coach;
    private String country;
    private Integer year;
    private List<Players> players;

    public FootballTeams() {}

    public FootballTeams(int id, String name, String coach, String country, Integer year) {
        this.id = id;
        this.name = name;
        this.coach = coach;
        this.country = country;
        this.year = year;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCoach() {
        return coach;
    }

    public void setCoach(String coach) {
        this.coach = coach;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public List<Players> getPlayers() {
        return players;
    }

    public void setPlayers(List<Players> players) {
        this.players = players;
    }

    @Override
    public String toString() {
        return "FootballTeams{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", coach='" + coach + '\'' +
                ", country='" + country + '\'' +
                ", year=" + year +
                '}';
    }
}
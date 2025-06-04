package domain;

public class Players {
    private int id;
    private int idFootballTeams;
    private String fullName;
    private String position;
    private String dateOfBirth;
    private Integer height;
    private Integer weight;

    public Players() {}

    public Players(int id, int idFootballTeams, String fullName, String position, String dateOfBirth, Integer height, Integer weight) {
        this.id = id;
        this.idFootballTeams = idFootballTeams;
        this.fullName = fullName;
        this.position = position;
        this.dateOfBirth = dateOfBirth;
        this.height = height;
        this.weight = weight;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdFootballTeams() {
        return idFootballTeams;
    }

    public void setIdFootballTeams(int idFootballTeams) {
        this.idFootballTeams = idFootballTeams;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    @Override
    public String toString() {
        return "Players{" +
                "id=" + id +
                ", idFootballTeams=" + idFootballTeams +
                ", fullName='" + fullName + '\'' +
                ", position='" + position + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", height='" + height + '\'' +
                ", weight='" + weight + '\'' +
                '}';
    }
}

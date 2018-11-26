package model;

public class User {
    //游客
    public static User GUEST=new User("Guest","");

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User(String userName,String password){
        this.userName=userName;
        this.password=password;
    }

    public User(){}
    private String userName;
    private String password;
}

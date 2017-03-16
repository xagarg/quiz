package quiz

class User {

    String userName;
    String password;
    String role;
    static constraints = {
        userName(blank: false, minSize: 3)
        password(blank: false, minSize: 3)
        role(blank: false)

    }
}

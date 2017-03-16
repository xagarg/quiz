import quiz.User

class BootStrap {

    def init = { servletContext ->
        new User(userName: "admin",password: "admin" ,role: "admin").save()
        new User(userName: "root",password: "root" ,role: "app").save()
    }
    def destroy = {
    }
}

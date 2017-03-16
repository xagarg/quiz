package quiz

 abstract class BaseController {

     def beforeInterceptor = [action: this.&auth, except: ['login','logout']]

     private auth(){
         if (!session.user){
             redirect(controller:'user',action:'login')
             return false
         }
     }

 }

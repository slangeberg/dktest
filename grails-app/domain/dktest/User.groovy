package dktest

class User extends DomainBase {

    static constraints = {
		email(email:true, blank:false)
    }
	
	String email
}

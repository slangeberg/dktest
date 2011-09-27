package dktest

class Organization extends DomainBase {

    static constraints = {
		name(blank:false)
    }
	
	String name
}

package dktest

class Role extends DomainBase {
	static constraints = {
		name(blank: false)
	}
	
	String name
}

package dktest

class Page extends DomainBase {

	static constraints = {
		name(blank: false)
	}
	
	String name
}

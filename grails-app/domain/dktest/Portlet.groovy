package dktest

class Portlet extends DomainBase {

	static constraints = {
		name(blank: false)
	}
	
	String name
}

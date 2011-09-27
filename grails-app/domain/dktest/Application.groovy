package dktest

class Application extends DomainBase {

    static constraints = {
		name(blank:false)
		shortUrl(blank:false)
    }
	
	static hasMany = [ pages : Page ]
	
	List pages //keep ordered
	
	String name 
	String shortUrl
}

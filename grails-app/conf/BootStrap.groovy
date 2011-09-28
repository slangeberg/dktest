import dktest.Application;
import dktest.Organization;
import dktest.Page;
import dktest.Portlet;
import dktest.Role;
import dktest.User;
import grails.util.GrailsUtil;

class BootStrap {

	def init = { servletContext ->
		if ( GrailsUtil.environment != "production" ) {
			//if ( !Role.count() ) {
				new Role( name:"Revenue Manager" ).save( failOnError:true, flush:true )
			//			}
			new Organization( name:"Client A" ).save( failOnError:true, flush:true )
			new User( email:"admin@dktest.com" ).save( failOnError:true, flush:true )

			new Portlet( name:"Portlet A" ).save( failOnError:true, flush:true )

			def pacmanHome = new Page( name:"Pacman - Home" )
			
			def pacman = new Application( name:"Pacman", shortUrl: "/pacman" )
			pacman.addToPages( pacmanHome )
			pacman.save( failOnError:true, flush:true )
		}
	}

	def destroy = {
	}
}

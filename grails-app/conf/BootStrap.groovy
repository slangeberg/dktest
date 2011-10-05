import dktest.Application;
import dktest.Organization;
import dktest.Page;
import dktest.Portlet;
import dktest.Role;
import dktest.User;
import dktest.Requestmap

import grails.util.GrailsUtil;

import grails.plugins.springsecurity.*

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
			
		//
		// Add Security
		//
			
		if ( !Requestmap.count() ) {
			new Requestmap(url: '/login/*', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
			new Requestmap(url: '/logout/*', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
		//	new Requestmap(url: '/*/create', configAttribute: 'ROLE_USER,IS_AUTHENTICATED_FULLY').save(failOnError:true, flush:true)
		//	new Requestmap(url: '/person/*', configAttribute: 'IS_AUTHENTICATED_REMEMBERED').save()
		//	new Requestmap(url: '/post/followAjax', configAttribute: 'ROLE_USER').save()
		//	new Requestmap(url: '/post/addPostAjax', configAttribute: 'ROLE_USER,IS_AUTHENTICATED_FULLY').save()
			new Requestmap(url: '/**', configAttribute: 'ROLE_USER').save(failOnError:true, flush:true)
		}
	}

	def destroy = {
	}
}

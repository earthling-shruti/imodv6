class BootStrap {

    def init = { servletContext ->
		if (imodv6.Role.list().size() == 0) {
			//user roles can be changed here, or in the ui
			new imodv6.Role(authority:"ROLE_ANONYMOUS").save();
			new imodv6.Role(authority:"ROLE_ADMIN").save();
			new imodv6.Role(authority:"ROLE_USER").save();
		}
    }
    def destroy = {
    }
}

class BootStrap {

    def init = { servletContext ->
		if (imodv6.Role.list().size() == 0) {
			new imodv6.Role(authority:"ROLE_ANONYMOUS").save();
			new imodv6.Role(authority:"ROLE_ADMIN").save();
			new imodv6.Role(authority:"ROLE_USER").save();
		}
    }
    def destroy = {
    }
}

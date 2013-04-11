package imodv6

class UserProfile {
	String organization
	String themeCode
	String streetAddress
	String city
	String state
	String country
	String zip

	static belongsTo = [user:ImodUser]
    static constraints = {
    }
	
	static mapping = {
		version false
	}
}

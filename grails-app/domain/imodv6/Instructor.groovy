package imodv6

class Instructor {
	String firstName
	String lastName
	String middleInitial
	String location
	String email
	String officeHours
	String webPage
	
	static hasMany = [phones:InstructorPhone, imods:Imod]
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
}

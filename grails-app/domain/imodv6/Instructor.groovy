package imodv6

class Instructor {
	String firstName
	String lastName
	String middleInitial
	String location
	String email
	String officeHours
	String webPage
	
	static hasMany = [phones:InstructorPhone]
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}

	def String toString(){
		return firstName + middleInitial + lastName
	} 
}

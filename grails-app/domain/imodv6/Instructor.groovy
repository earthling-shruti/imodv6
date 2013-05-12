package imodv6

class Instructor {
	String firstName
	String lastName
	String middleInitial
	String location
	String email
	String officeHours
	String webPage
	String phoneNumber
	
	static hasMany = [phones:InstructorPhone]
	
	static belongsTo = [imod:Imod]
	
    static constraints = {
		middleInitial nullable: true
		lastName nullable: true
		location nullable: true
		email nullable: true
		officeHours nullable: true
		webPage nullable: true
		phoneNumber nullable: true
    }
	
	static mapping = {
		version false
	}

	def String toString(){
		return firstName + middleInitial + lastName
	} 
}

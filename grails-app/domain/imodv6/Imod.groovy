package imodv6

class Imod {
	static belongsTo = ImodUser
	String name
	String url
	String overview
	String courseSemester
	String courseLocation
	String timeRatio
	Integer numberOfSeats
	String subjectArea
	Integer creditHours
	String imodNumber
	CoursePolicy coursePolicy
	Schedule schedule
	ScheduleDate scheduleDate
	Piechart piechart
	
	static hasMany = [learningObjectives:LearningObjective, users:ImodUser, instructors:Instructor,
		courseComponents:CourseComponentCode, audience:Audience, contents:Content]
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
	
	def String toString(){
		return name
	}
}

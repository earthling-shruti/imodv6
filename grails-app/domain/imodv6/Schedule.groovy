package imodv6

class Schedule {
	String repeats
	String repeatsEvery
	String repeatsDays
	Date startDate
	Date endDate
	Integer endOccurences
	Integer sunday
	Integer monday
	Integer tuesday
	Integer wednesday
	Integer thursday
	Integer friday
	Integer saturday
	
	static belongsTo = [imod:Imod]
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
}

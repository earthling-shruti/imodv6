package imodv6

class Piechart {
	Integer count
	
	static hasOne = [priority: ContentPriorityCode]
	
	static belongsTo = [imod:Imod]
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
}

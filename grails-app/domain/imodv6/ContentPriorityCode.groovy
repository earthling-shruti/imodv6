package imodv6

class ContentPriorityCode {
	String description
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
	
	def String toString(){
		return description
	}
}

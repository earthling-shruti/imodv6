package imodv6

class Help {
	Integer tabId
	Integer tabFieldId
	String text
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
	
	def String toString(){
		return text //TBD
	}
}

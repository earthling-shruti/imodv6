package imodv6

class Help {
	Integer helpItemId //TBD
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

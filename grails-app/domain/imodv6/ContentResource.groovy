package imodv6

class ContentResource {
	String name
	ContentResourceType type
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
	
	def String toString(){
		return name
	}
}

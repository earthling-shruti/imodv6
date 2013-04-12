package imodv6

class Content {
	String topicTitle
	LearningObjective learningObjective
	ContentPriorityCode priority

	static hasMany = [resources:ContentResource]
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
	
	def String toString(){
		return topicTitle
	}
}

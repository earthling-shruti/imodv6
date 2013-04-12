package imodv6

class LearningObjective {
	String condition
	String performance
	String criteria
	String indicator
	String completeLearningObjective
	LearningDomain learningDomain
	DomainCategory domainCategory
	Content content
	ActionWord actionWord
	LearningObjectiveCriteriaType criteriaType
	
	static belongsTo = [imod:Imod]
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
	
	def String toString(){
		return completeLearningObjective
	}
}

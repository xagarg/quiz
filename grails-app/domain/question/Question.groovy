package question

class Question {

    String optionOne
    String optionTwo
    String optionThree
    String optionFour
    String question
    String category
    String correctAnswer
    static constraints = {
        question(blank: false)
        category(blank: false, inList: ["English","Math","Science"] )
        optionOne(blank: false)
        optionTwo(blank: false)
        optionThree(blank: false)
        optionFour(blank: false)
        correctAnswer(blank: false)
    }
}

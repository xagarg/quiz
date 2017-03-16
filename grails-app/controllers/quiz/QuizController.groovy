package quiz

import question.Question

class QuizController extends BaseController {

    def fetchQuestion(){
        def questions = Question.findAllByCategory(params.questionCategory)
        if (questions.size() == 0) {
            flash.message = "Question not Found"
            redirect(controller: "user",action: "home")
            return
        }
        session.questionList=questions
        session.firstReq = "true"
      forward(action: 'quiz')
    }

    def quiz() {
        if(session.firstReq.equals('false')){

            String clicked=params.option
            String id=params.id
            int marks=0
            def payedQuestion = Question.get(id);
            if (clicked.equals(payedQuestion.correctAnswer)) {
                marks = 5
            }
            new Result(question: payedQuestion.question, clickedAns: clicked, correctAns: payedQuestion.correctAnswer, marks: marks).save()

        }
        session.firstReq ="false"
        def displayQuestion = null

            def qList = session.questionList
            int size = qList.size()
            if (size>0) {
                displayQuestion = qList.get(size-1)
                qList.remove(size-1)
            }else{
                flash.message = "Display result"
                redirect(controller: "user",action: "home")
                return
            }

        [question:displayQuestion]
    }
}

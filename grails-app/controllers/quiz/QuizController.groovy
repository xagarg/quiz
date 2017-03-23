package quiz

import question.Question
import static java.lang.Integer.parseInt as asInteger

class QuizController extends BaseController {

    def fetchQuestion(){
        
        def results = Result.list()
        Result.deleteAll(results)

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
        int marks=0


        if(session.firstReq.equals('false')){

            String clicked=params.option
            String id=params.id

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
            //  flash.message="${marks}"
            // redirect(controller: "user",action: "home",params: [marks:total])
            int result=Result.countByMarksGreaterThan(1)
            result=result*5
            chain(controller: "user", action: "resultDisplay",model: [marks: result])
        }
        [question:displayQuestion]
    }
}

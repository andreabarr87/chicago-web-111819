class ResponsesController < ApplicationController

    before_action :define_question, :define_response

    def new
      @number_correct = session[:num_correct]
      @feedback = flash[:last_judgement]
    end

    def define_question
        @question = Question.order("RANDOM()").limit(1)[0]
    end

    def define_response
        @questionResponse = Response.new({ question: @question })
    end

    def create
        # @number_correct = @number_correct || 0
        # @number_correct ||= 0
        session[:num_correct] ||= 0

        session[:lotto_picks] = [12, 22, 43, 57, 75, 110]
        response = Response.create(response_params)
        if response.question.correct_answer == response.answer
            # @number_correct = @number_correct + 1
            session[:num_correct] = session[:num_correct] + 1
            flash[:last_judgement] = "Correct"
            # p @number_correct
            p session[:num_correct]
            p session
        else
            flash[:last_judgement] = "Incorrect"
            # p @number_correct
            p session[:num_correct]
            p session
        end
        redirect_to '/random-question'
    end

    def response_params
        params.require(:response).permit(:answer_id, :question_id)
    end

end

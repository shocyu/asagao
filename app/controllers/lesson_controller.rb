class LessonController < ApplicationController
    before_action :set_message, only: :step7
    
    def step1
        render text: "こんにちは、#{params[:name]}さん"
    end
    
    def step2
        render text: params[:controller] + "#" + params[:action]
    end
    
    def step5
        flash[:notice] = "step6に移動します"
        redirect_to action: "step6"
    end
    
    def step6
        render text: flash[:notice]
    end
    
    def step7
        render text: @message
    end
    
    private
    def set_message
        @message = "こんにちは"
    end
    
end

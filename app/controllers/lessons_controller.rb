class LessonsController < ApplicationController
  
  
    def destroy
      @teacher = Teacher.find(params[:teacher_id])
      @lesson = @teacher.lessons.find(params[:id])
      @lesson.destroy
      redirect_to teacher_path(@teacher)
    end
    
    def create
        @teacher = Teacher.find(params[:teacher_id])
        @lesson = @teacher.lessons.create(lesson_params)
        redirect_to teacher_path(@teacher)
    end
     
      private
        def lesson_params
          params.require(:lesson).permit(:name, :code)
        end
end

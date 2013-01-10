class StudentsController < ApplicationController
def index
    @students=Students.all
  end

def new
    @students=Students.new
  end

def show
    @students=Students.all
  end
def update
    @students=Students.find(params[:id])
    if @students.update_attributes(params[:students])
      redirect_to :action=>'edit',:id=>@students
    else
      render 'index'
    end
  end

def afterlogin
     @students=Students.all
   end
   
def create
    @students=Students.new(params[:students])
    if @students.save
      redirect_to :action=>'afterlogin'
    else
      render 'new'
    end
  end
end

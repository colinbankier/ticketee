require 'spec_helper'

describe ProjectsController, :type => :controller do
  it "should redirect to homepage if page not found" do
    get :show, :id => "not-here"
    response.should redirect_to(projects_path)
    message = "The project you were looking for could not be found."
    flash[:alert].should eql(message)
  end
end

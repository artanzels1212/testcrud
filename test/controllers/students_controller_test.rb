require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { branch: @student.branch, name: @student.name, year: @student.year }
    end

    assert_response 201
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { branch: @student.branch, name: @student.name, year: @student.year }
    assert_response 204
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_response 204
  end
end

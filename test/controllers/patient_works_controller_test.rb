require "test_helper"

class PatientWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_work = patient_works(:one)
  end

  test "should get index" do
    get patient_works_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_work_url
    assert_response :success
  end

  test "should create patient_work" do
    assert_difference("PatientWork.count") do
      post patient_works_url, params: { patient_work: { description: @patient_work.description, discount: @patient_work.discount, estimation: @patient_work.estimation, patient_id: @patient_work.patient_id } }
    end

    assert_redirected_to patient_work_url(PatientWork.last)
  end

  test "should show patient_work" do
    get patient_work_url(@patient_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_work_url(@patient_work)
    assert_response :success
  end

  test "should update patient_work" do
    patch patient_work_url(@patient_work), params: { patient_work: { description: @patient_work.description, discount: @patient_work.discount, estimation: @patient_work.estimation, patient_id: @patient_work.patient_id } }
    assert_redirected_to patient_work_url(@patient_work)
  end

  test "should destroy patient_work" do
    assert_difference("PatientWork.count", -1) do
      delete patient_work_url(@patient_work)
    end

    assert_redirected_to patient_works_url
  end
end

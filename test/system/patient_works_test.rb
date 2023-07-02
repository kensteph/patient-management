require "application_system_test_case"

class PatientWorksTest < ApplicationSystemTestCase
  setup do
    @patient_work = patient_works(:one)
  end

  test "visiting the index" do
    visit patient_works_url
    assert_selector "h1", text: "Patient works"
  end

  test "should create patient work" do
    visit patient_works_url
    click_on "New patient work"

    fill_in "Description", with: @patient_work.description
    fill_in "Discount", with: @patient_work.discount
    fill_in "Estimation", with: @patient_work.estimation
    fill_in "Patient", with: @patient_work.patient_id
    click_on "Create Patient work"

    assert_text "Patient work was successfully created"
    click_on "Back"
  end

  test "should update Patient work" do
    visit patient_work_url(@patient_work)
    click_on "Edit this patient work", match: :first

    fill_in "Description", with: @patient_work.description
    fill_in "Discount", with: @patient_work.discount
    fill_in "Estimation", with: @patient_work.estimation
    fill_in "Patient", with: @patient_work.patient_id
    click_on "Update Patient work"

    assert_text "Patient work was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient work" do
    visit patient_work_url(@patient_work)
    click_on "Destroy this patient work", match: :first

    assert_text "Patient work was successfully destroyed"
  end
end

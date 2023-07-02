require "application_system_test_case"

class WorkDetailsTest < ApplicationSystemTestCase
  setup do
    @work_detail = work_details(:one)
  end

  test "visiting the index" do
    visit work_details_url
    assert_selector "h1", text: "Work details"
  end

  test "should create work detail" do
    visit work_details_url
    click_on "New work detail"

    fill_in "Patientwork", with: @work_detail.patientWork_id
    fill_in "Service", with: @work_detail.service_id
    click_on "Create Work detail"

    assert_text "Work detail was successfully created"
    click_on "Back"
  end

  test "should update Work detail" do
    visit work_detail_url(@work_detail)
    click_on "Edit this work detail", match: :first

    fill_in "Patientwork", with: @work_detail.patientWork_id
    fill_in "Service", with: @work_detail.service_id
    click_on "Update Work detail"

    assert_text "Work detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Work detail" do
    visit work_detail_url(@work_detail)
    click_on "Destroy this work detail", match: :first

    assert_text "Work detail was successfully destroyed"
  end
end

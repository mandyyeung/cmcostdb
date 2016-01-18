require 'test_helper'

class PcOsControllerTest < ActionController::TestCase
  setup do
    @pco = pcos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pcos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pco" do
    assert_difference('Pco.count') do
      post :create, pco: { al: @pco.al, approved_by_owner: @pco.approved_by_owner, approved_value: @pco.approved_value, approx_value: @pco.approx_value, backcharge: @pco.backcharge, billed: @pco.billed, bp: @pco.bp, classification: @pco.classification, comments: @pco.comments, date: @pco.date, description: @pco.description, engineer: @pco.engineer, filter: @pco.filter, insurance_claim: @pco.insurance_claim, number: @pco.number, project: @pco.project, proposal_num: @pco.proposal_num, proposal_recd: @pco.proposal_recd, proposed_value: @pco.proposed_value, ref_doc: @pco.ref_doc, requested_by: @pco.requested_by, status: @pco.status, subcontractor: @pco.subcontractor, submitted_to_owner: @pco.submitted_to_owner, submitted_value: @pco.submitted_value, trade: @pco.trade, work_completed: @pco.work_completed }
    end

    assert_redirected_to pco_path(assigns(:pco))
  end

  test "should show pco" do
    get :show, id: @pco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pco
    assert_response :success
  end

  test "should update pco" do
    patch :update, id: @pco, pco: { al: @pco.al, approved_by_owner: @pco.approved_by_owner, approved_value: @pco.approved_value, approx_value: @pco.approx_value, backcharge: @pco.backcharge, billed: @pco.billed, bp: @pco.bp, classification: @pco.classification, comments: @pco.comments, date: @pco.date, description: @pco.description, engineer: @pco.engineer, filter: @pco.filter, insurance_claim: @pco.insurance_claim, number: @pco.number, project: @pco.project, proposal_num: @pco.proposal_num, proposal_recd: @pco.proposal_recd, proposed_value: @pco.proposed_value, ref_doc: @pco.ref_doc, requested_by: @pco.requested_by, status: @pco.status, subcontractor: @pco.subcontractor, submitted_to_owner: @pco.submitted_to_owner, submitted_value: @pco.submitted_value, trade: @pco.trade, work_completed: @pco.work_completed }
    assert_redirected_to pco_path(assigns(:pco))
  end

  test "should destroy pco" do
    assert_difference('Pco.count', -1) do
      delete :destroy, id: @pco
    end

    assert_redirected_to pcos_path
  end
end

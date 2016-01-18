json.array!(@pcos) do |pco|
  json.extract! pco, :id, :number, :requested_by, :project, :date, :status, :subcontractor, :trade, :proposal_num, :ref_doc, :description, :classification, :work_completed, :insurance_claim, :backcharge, :filter, :al, :proposal_recd, :submitted_to_owner, :approved_by_owner, :billed, :approx_value, :proposed_value, :submitted_value, :approved_value, :comments, :engineer, :bp
  json.url pco_url(pco, format: :json)
end

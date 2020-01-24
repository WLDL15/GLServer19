json.extract!  @alpha_evidence, :id, :completed, :document
json.date print_date(@alpha_item.completed_at)
json.save @evidence_save
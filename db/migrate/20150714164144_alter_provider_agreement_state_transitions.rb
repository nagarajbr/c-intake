class AlterProviderAgreementStateTransitions < ActiveRecord::Migration[5.2]
  def change
  		add_column :provider_agreement_state_transitions, :created_by, :integer
  		add_column :provider_agreement_state_transitions, :reason, :string
  end
end

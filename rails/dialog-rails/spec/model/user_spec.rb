# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of(:nome) }
  it { is_expected.to validate_presence_of(:idade) }
  it { should validate_numericality_of(:idade).is_greater_than_or_equal_to(1) }
  it { is_expected.to validate_presence_of(:sexo) }
  it { is_expected.to validate_presence_of(:uf) }
  it { should validate_length_of(:uf).is_at_most(2).with_long_message('2 characters is the maximum allowed') }
  it { is_expected.to validate_presence_of(:cidade) }
end

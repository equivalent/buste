class UsedCard < ApplicationRecord
  module ClassMethods
    def add(sign:, value:)
      used_card_scope = UsedCard
        .where(sign: sign, value: value)
        .order(:id)

      counter = used_card_scope.count
      if counter > 0
        state = :used
        used_at = used_card_scope.last.created_at
      else
        state = :new
        used_at = nil
      end

      uc = UsedCard.create!(sign: sign, value: value)
      OpenStruct.new(used_at: used_at, state: state, counter: counter)
    end
  end
  extend ClassMethods

  validates_presence_of :sign, :value
end

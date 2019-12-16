class Skill < ApplicationRecord
  attributes :id, :text, :editable
    # name this method anything that makes sense, then reference it above ^
    def editable
      scope == object.user
    end
  end

  belongs_to :user
end

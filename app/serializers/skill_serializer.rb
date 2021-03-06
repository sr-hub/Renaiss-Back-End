class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :units, :currentUnit, :maxUnit, :editable
  belongs_to :user
    # name this method anything that makes sense, then reference it above ^
    def editable
      scope == object.user
    end
end

class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :units, :currentUnit, :maxUnit
end

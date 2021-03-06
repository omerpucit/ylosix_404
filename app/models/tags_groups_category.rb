# == Schema Information
#
# Table name: tags_groups_categories
#
#  category_id   :integer
#  created_at    :datetime         not null
#  id            :integer          not null, primary key
#  tags_group_id :integer
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_tags_groups_categories_on_category_id    (category_id)
#  index_tags_groups_categories_on_tags_group_id  (tags_group_id)
#
# Foreign Keys
#
#  fk_rails_00620a44cd  (tags_group_id => tags_groups.id)
#  fk_rails_b97849bb14  (category_id => categories.id)
#

class TagsGroupsCategory < ActiveRecord::Base
  belongs_to :category
  belongs_to :tags_group
end

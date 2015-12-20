class Elf < ActiveRecord::Base
  has_many :toys
  accepts_nested_attributes_for :toys, :reject_if => :all_blank, :allow_destroy => true
end
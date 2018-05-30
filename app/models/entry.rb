class Entry < ActiveRecord::Base
	belongs_to :user
	delegate :name, :created_at, to: :entry, prefix: true, allow_nil: true
end

class Question < ActiveRecord::Base
	attr_accessible :name, :instruction, :text
end

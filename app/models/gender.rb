class Gender < ActiveRecord::Base
validates_presence_of :name
self.table_name="gender"

end
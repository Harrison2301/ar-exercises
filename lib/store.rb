class Store < ActiveRecord::Base
    has_many :employees
    validates name: 3..100
    validates annual_revenue: 0..100000000000
end

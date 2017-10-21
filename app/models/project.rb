class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :discusssions, dependent: :destroy
    validates(:title,{
        presence:true,
        uniqueness:true
    })
end

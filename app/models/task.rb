class Task < ApplicationRecord
  belongs_to :project
    validates(:title,{
        presence:true,
        uniqueness:true
    })

    after_initialize :default_settings


    def default_settings
      self.completed ||= false
    end
end

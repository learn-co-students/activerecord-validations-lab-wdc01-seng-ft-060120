class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with TitleValidator
    
    validates :content, length: {minimum: 30}
    validates :summary, length: {maximum: 40}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

end

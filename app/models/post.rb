class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not valid" }

    validate :if_clickbait, if: :title

    def if_clickbait
        words = ["Won't Believe", "Secret", "Top [number]", "Guess"]
        words.each do |word|
        if title.include?(word)
            return true
            end
        end
            errors[:title] << 'more clickbait'
        return false
    end
end




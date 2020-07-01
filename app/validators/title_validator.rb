class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top") || record.title.include?("Guess")
                record.errors[:title] << "This title just isn't clickbait-y enough for us."
            end
        end
    end
end
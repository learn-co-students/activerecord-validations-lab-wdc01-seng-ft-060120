class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title == nil
            record.errors[:title] << "Title must not be empty"
        elsif !record.title.include?("Won't Believe")
            record.errors[:title] << "Not clickbait-y enough."
        end
    end
end

# Finally, add a custom validator to 
# Post that ensures the title is sufficiently clickbait-y.
# If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess",
# the validator should add a validation.
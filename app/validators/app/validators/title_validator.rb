class TitleValidator < ActiveModel::TitleValidator

        def validate(record)
                unless record.title.include?("Won't Believe", "Secret", "Top [number]", "Guess")
                  record.errors[:title] << "This is invalid because not clickbait"
                end
            end

end
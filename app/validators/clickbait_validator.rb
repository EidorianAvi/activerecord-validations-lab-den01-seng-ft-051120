class ClickbaitValidator < ActiveModel::Validator 
  def validate record
    requirements = ["Won't Believe", "Secret", "Top[number]", "Guess"]
    if requirements.find {|element| record.title.include?(element)} == nil
        record.errors[:title] << "No clickbait"
    end
  end
end
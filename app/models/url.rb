class Url < ApplicationRecord
  after_create :generate_short_url
  
  def generate_short_url
    self.short = generate_random_string(8)
    self.save!
  end

  private

  def generate_random_string(chars)
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    string = (0...chars).map { o[rand(o.length)] }.join
  end
end

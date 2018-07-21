class Post < ApplicationRecord
  belongs_to :category
  # belongs_to :user
  has_many :tags
  validate :null_fields

  before_create :set_random_to_zero
  self.per_page = 10

  def null_fields &block
    if title.blank?
      errors.add(:title, :not_blank, message: "Você deve específicar um título.")
    elsif context.blank?
      errors.add(:context, :not_blank, message: "Conteúdo não pode estar em branco.")
    end

    yield if block_given?
  end

  def set_random_to_zero
    random_picked = 0
  end
end

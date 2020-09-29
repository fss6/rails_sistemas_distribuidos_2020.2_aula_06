class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :post

  def created_at
    data = self[:created_at]
    data.strftime("%d/%m/%Y %H:%m:%S") if data.present?
  end
end

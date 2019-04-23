class Sponsor < ApplicationRecord
  validates :company, :logo, presence: true
  validates :logo, allow_blank: true, format: {with:%r{\.(gif|jpg|png)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'}
  def to_xml(options = {})
    options[:indent] ||= 2
    xml = options[:builder] ||= Builder::XmlMarkup.new(:indent => options[:indent])
    xml.instruct! unless options[:skip_instruct]
    xml.sponsor do
      xml.tag!(:id, id)
      xml.tag!(:company, company)
      xml.tag!(:logo, logo)
      xml.tag!(:created_at, created_at)
      xml.tag!(:updated_at, updated_at)
    end

  end

end

require "nkf"

module StringNormalizer
  exend ActiveSupport::Concern

  def nomalize_as_name(text)
    NKF.nkf("-W -w -Z1", text).strip if text
  end

  def nomalize_as_furigana(text)
    NKF.nkf("-W -w -Z1 --katakana", text).strip if text
  end
end

module ApplicationHelper
  include Pagy::Frontend

  def t_sexo(key)
    t("activerecord.enums.users.sexos.#{key}")
  end

  def sexo_options_for_select
    User.sexos.map do |key, _|
      [t_sexo(key), key]
    end
  end
end

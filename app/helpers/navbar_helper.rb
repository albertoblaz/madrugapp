module NavbarHelper
  def tab_styles(name)
    if current_page?(controller: name)
      "text-green-400 transition"
    else
      "text-white hover:text-slate-400 focus:text-slate-400 transition"
    end
  end
end
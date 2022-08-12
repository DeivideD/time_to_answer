module ApplicationHelper
  def translation(object, method)
    object.model.human_attribute_name(method)
  end
end

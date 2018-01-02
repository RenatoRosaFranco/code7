# utf-8
class Mailer
  # Initialize
  def initialize(mailTemplate, method, attributes = nil, action)
    begin
     mailTemplate.send(method.to_sym, attributes)
      .send(action.to_sym)
    rescue Exception => e
      raise StandardError, e
    end
  end
end

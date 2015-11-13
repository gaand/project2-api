class CurrentEventSerializer < EventSerializer
  attributes :details

  def details
    'Details you only get if this is the current_event' if current_event
  end
end

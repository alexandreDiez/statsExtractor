module ScrapperHelper
  def get_text_node(node, token = nil)

    if node.text.nil?
      #Retourne le text du dernier élément d'un nodeset
      text_node = node.last_element_child.text
    else
      #Retourne le text du nodeseet
      text_node = node.text
    end

    if token.nil?
      text = text_node  #.gsub!(/[^0-9A-Za-z]/, '')
    else
      text = trimTextBefore( text_node , token ) #.gsub!(/[^0-9A-Za-z]/, '')
    end

    puts text
    text

  end

  def trimTextBefore(text, token)
    text.gsub!(/.*#{token}/, '')
  end

end

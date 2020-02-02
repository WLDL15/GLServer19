module AlphaStatesHelper
    def return_tooltip(in_text)
        in_text.split("/").each do |text|
            if Dictionary.find_by(name: text) && text == Dictionary.find_by(name: text).name
                return_text = ""
                return_text << "<span style=\"border-bottom: solid 1px black; data-toggle=\"tooltip\" data-html=\"true\" title=" << Dictionary.find_by(name: text).description << ">" << text << "</span>" 
                in_text.gsub!("/" << text << "/", return_text)
            end            
        end
        return in_text
    end

end

class Players 
    def ask_name
        @name = gets.chomp
    end

    def valid_name
      !@name.empty?
    end
end


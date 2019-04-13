class Book
# write your code here
    attr_accessor :title, :no_capitalize

    def initialize()
        @no_capitalize = ['the','a','an','and','in','of']
        @title = ""
    end

    def title=(str)
        text_arr = str.strip.split(" ")
        text_arr = text_arr.collect.with_index do |word,index|
            if @no_capitalize.include?(word) && index == 0
                word.capitalize
            elsif @no_capitalize.include?(word) && index != 0
                word
            else
                word.capitalize
            end
        end
        @title = text_arr.join(" ")
    end
end

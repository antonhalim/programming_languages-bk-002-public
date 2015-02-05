require "pry"

def reformat_languages(languages)
    reformedhash = {}
    languages.each do |program, value|
      #key = :oo,:functional #value = ruby, clojure
      value.each do |lang, type|
        #lang = ruby type = :type
        type.each do |key, style|
          # key = type style "interpreted"
          reformedhash[lang] ||= {}
          #reformedhash[lang] = :ruby
          reformedhash[lang][key] ||= nil
          #reformedhash[lang][key] = type
          #-------------------------------
          if reformedhash[lang][key] == nil
              reformedhash[lang][key] ||= ""
              reformedhash[lang][key]<<style
          end
          reformedhash[lang][:style] ||= []
          reformedhash[lang][:style]<<program


            # binding.pry
        end
      end
    end
    reformedhash
end


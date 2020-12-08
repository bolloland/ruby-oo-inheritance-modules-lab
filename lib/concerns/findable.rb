module Findable

    def find_by_name(name)
        all.detect{|a| a.name == name}
    end
##works with and without `self` in the definition?
#YES. 
    def find_by_name(name)
        all.detect{|a| a.name == name}
    end
end
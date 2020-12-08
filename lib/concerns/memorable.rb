module Memorable
#Remember that the self keyword is 
#omitted when defining class methods inside modules.
    module ClassMethods
        def reset_all
            all.clear #no`self`
        end

        def count    #no`self`
            all.count
        end
    end
    
    module InstanceMethods
        def initialize
            self.class.all << self
        end
    end
end
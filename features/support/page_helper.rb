Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each{|file| require file}

module Pages
    
    def commum
        @@commum ||= Commum.new
    end
    
    def home
        @home ||= Home.new
    end

    def parceiros
        @parceiros ||= Parceiros.new
    end

    def second
        @second ||= Second.new
    end
    
end
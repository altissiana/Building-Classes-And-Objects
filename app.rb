class Building
    attr_accessor :name,
                  :number_of_tenants  

    attr_reader :address

    @number_of_floors
    
    @@all = []

    def initialize(name, address, number_of_floors, number_of_tenants)
        @name = name
        @address = address
        @number_of_floors =  number_of_floors
        @number_of_tenants = number_of_tenants
        @@all << self
    end    

    def self.all
        @@all
    end    
    
    def self.ave_num_tenants
        sum = @@all.sum {|building| building.number_of_tenants}
        x = sum / @@all.size.to_f 
        puts x   
    end
    
    def placard
        "#{name}, #{address}"
    end    

    def ave_tenants_per_floor
        (number_of_tenants / @number_of_floors.to_f).round
    end   

end    

b1 = Building.new("Dakota", "NYC", 9, 100)
b2 = Building.new("Dylan", "Denver", 5, 101)
# Building.ave_num_tenants
# puts b1.placard
# puts b2.ave_tenants_per_floor


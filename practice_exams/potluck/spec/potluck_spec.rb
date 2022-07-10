require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
    
    before(:each) do
        @potluck = Potluck.new("7-13-18")
        @couscous_salad = Dish.new("Couscous Salad", :appetizer) 
        @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        @roast_pork = Dish.new("Roast Pork", :entre)
        @summer_pizza = Dish.new("Summer Pizza", :appetizer)
        @candy_salad = Dish.new("Candy Salad", :dessert)
        @bean_dip = Dish.new("Bean Dip", :appetizer)
    end

    it 'exists' do
        expect(@potluck).to be_instance_of(Potluck)
    end

    it 'has a date' do
        expect(@potluck.date).to eq("7-13-18")
    end

    it 'has no dishes by default' do
        expect(@potluck.dishes).to eq([])
    end

    it 'can add dishes' do
        @potluck.add_dish(@couscous_salad)
        @potluck.add_dish(@cocktail_meatballs)

        expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
        expect(@potluck.dishes.length).to eq(2)
    end

    it 'can get all dishes from a category' do
        @potluck.add_dish(@couscous_salad)
        @potluck.add_dish(@cocktail_meatballs)
        @potluck.add_dish(@roast_pork)
        @potluck.add_dish(@summer_pizza)
        @potluck.add_dish(@candy_salad)

        expect(@potluck.get_all_from_category(:appetizer)).to eq([@couscous_salad, @summer_pizza])
        expect(@potluck.get_all_from_category(:appetizer).first).to eq(@couscous_salad)
        expect(@potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
    end

    it 'can display a menu of all dishes' do
        @potluck.add_dish(@couscous_salad)
        @potluck.add_dish(@cocktail_meatballs)
        @potluck.add_dish(@roast_pork)
        @potluck.add_dish(@summer_pizza)
        @potluck.add_dish(@candy_salad)
        @potluck.add_dish(@bean_dip)

        expect(@potluck.menu).to eq({:appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],:entres=>["Cocktail Meatballs", "Roast Pork"],:desserts=>["Candy Salad"]})
    end

    it 'can display the ratio of a certain category represented in the menu' do
        @potluck.add_dish(@couscous_salad)
        @potluck.add_dish(@cocktail_meatballs)
        @potluck.add_dish(@roast_pork)
        @potluck.add_dish(@summer_pizza)
        @potluck.add_dish(@candy_salad)
        @potluck.add_dish(@bean_dip)

        expect(@potluck.ratio(:appetizer)).to eq(50.0)
    end
end
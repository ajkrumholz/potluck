require './lib/dish'

class Potluck

    attr_reader :date,
                :dishes

    def initialize(date)
        @date = date
        @dishes = []
    end

    def add_dish(dish)
        @dishes << dish
    end

    def get_all_from_category(category)
        @dishes.select do |dish|
            dish.category == category
        end
    end

    # define a method #menu that uses the get_all_from_category method to create a menu. the menu is a hash with dish.category as keys and an array of dish.name for all of the dishes in that category
    def menu
        categories = @dishes.map do |dish|
            dish.category
        end.uniq!
        menu = {}
        categories.each do |category|
            names = get_all_from_category(category).map do |dish|
                dish.name
            end
            menu[("#{category.to_s}" + 's').to_sym] = names.sort
        end
        menu
    end
    
    def ratio(category)
        (get_all_from_category(category).count.to_f/@dishes.count) * 100
    end
end

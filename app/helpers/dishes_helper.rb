module DishesHelper
    def dish_author(dish)
        user_signed_in? && current_user.id == dish.user_id
    end
end

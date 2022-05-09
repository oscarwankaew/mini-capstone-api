class Product < ApplicationRecord
    def is_discounted?
        price < 10
    end

    def tax
        tax = price * 0.09
    end

    def total
        total = price + tax
        return "$#{total} dollars."
    end

    def friendly_created_at
        return created_at.strftime("%e %b %Y %H:%M:%S%p")
    end
    def friendly_updated_at
        return updated_at.strftime("%e %b %Y %H:%M:%S%p")
    end
end

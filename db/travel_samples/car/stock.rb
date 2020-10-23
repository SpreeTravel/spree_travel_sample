# frozen_string_literal: true

car_variant_ids = Spree::Variant.joins(product: :product_type)
                                .where('spree_product_types.name = ?', 'car').ids

Spree::StockItem.where(id: car_variant_ids).update_all(count_on_hand: 1)

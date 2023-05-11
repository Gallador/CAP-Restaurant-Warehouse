using my.warehouse as my from '../db/schema';

service CatalogService {

    entity Product as projection on my.Product;
    entity Pizza as projection on my.Pizza;
    entity PizzaProduct as projection on my.PizzaProduct;
    entity Order as projection on my.Order;
    entity OrderItem as projection on my.OrderItem;
    entity Size as projection on my.Size;
    entity Grammar as projection on my.Grammar;
    entity Supply as projection on my.Supply;
    entity SupplyItems as projection on my.SupplyItems;

/*    define view productMeasurementDesc as 
    select from Product {
        key ID,
        productMeasurement,
        @title : '{i18n>measDesc}'
        case
            when
                productMeasurement = 1
            then
                'gramm'
            when
                productMeasurement = 2
            then
                'kilogram'
            when
                productMeasurement = 3
            then
                'mililiter'
            when
                productMeasurement = 4
            then
                'liter'
            when
                productMeasurement = 5
            then
                'pieces'
            else
                ' '
        end as![measDesc] : String
    };*/
}
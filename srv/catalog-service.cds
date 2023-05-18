using my.warehouse as my from '../db/schema';

service CatalogService {

    entity Product as projection on my.Product;
    entity Measurement as projection on my.Measurement;
    entity Pizza as projection on my.Pizza;
    entity PizzaProduct as projection on my.PizzaProduct;
    entity Order as projection on my.Order;
    entity OrderItem as projection on my.OrderItem;
    entity Size as projection on my.Size;
    entity Grammar as projection on my.Grammar actions{
        action FillGrammarList()
    };
    entity Supply as projection on my.Supply;
    entity SupplyItems as projection on my.SupplyItems;

}
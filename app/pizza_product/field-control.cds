using CatalogService as service from '../../srv/catalog-service';

annotate service.PizzaProduct with {
    recordID @readonly;
    pizza_ID @readonly;
    product @mandatory;
};
using CatalogService as service from '../../srv/catalog-service';

annotate service.PizzaProduct with {
    recordID @readonly;
    pizza @readonly;
    product @mandatory;
};
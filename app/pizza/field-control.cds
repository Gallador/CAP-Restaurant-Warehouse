using CatalogService as service from '../../srv/catalog-service';

annotate service.Pizza with {
    pizzaID @readonly;
    pizzaName @mandatory;
}
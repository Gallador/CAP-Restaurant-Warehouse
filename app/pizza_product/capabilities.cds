using CatalogService as service from '../../srv/catalog-service';

annotate service.PizzaProduct with @(
    Capabilities : {
        Deletable  : true,
        Insertable : true
    },
);
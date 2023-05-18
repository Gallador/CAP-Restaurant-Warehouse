using CatalogService as service from '../../srv/catalog-service';

annotate service.OrderItem with @(
    Capabilities : {
        Deletable  : true,
        Insertable : true
    },
);
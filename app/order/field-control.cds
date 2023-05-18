using CatalogService as service from '../../srv/catalog-service';

annotate service.Order with {
    orderID @readonly;
}
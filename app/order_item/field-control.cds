using CatalogService as service from '../../srv/catalog-service';

annotate service.OrderItem with {
    itemID @readonly;
    order_ID @readonly;
    orderQuantity @mandatory;
    pizza @mandatory;
    size @mandatory;
    
}
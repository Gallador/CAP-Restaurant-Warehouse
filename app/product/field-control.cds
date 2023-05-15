using CatalogService from '../../srv/catalog-service';

annotate CatalogService.Product with {
    productID @UI.Hidden;
    productName @mandatory;
    productBalance @mandatory;
    //productMeasurement @mandatory;
}
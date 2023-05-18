using CatalogService as service from '../../srv/catalog-service';

annotate service.Size with {
    sizeID @readonly;
    sizeName @mandatory;
    sizeIndex @mandatory;
}
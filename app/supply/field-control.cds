using CatalogService as service from '../../srv/catalog-service';

annotate CatalogService.Supply with {
    supplyID @readonly;
    supplyDeliver @mandatory;
    createdAt @readonly;
}
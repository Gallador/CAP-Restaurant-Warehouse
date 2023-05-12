using CatalogService as service from '../../srv/catalog-service';

annotate service.SupplyItems with {
    supply_ID @readonly;
    product @mandatory;
    supplyAmount @mandatory;
}
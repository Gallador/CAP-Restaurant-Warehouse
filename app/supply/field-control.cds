using CatalogService as service from '../../srv/catalog-service';

annotate service.Supply with {
    supplyID @readonly;
    supplyDeliver @mandatory;
    createdAt @readonly;
    supplyStatus @readonly;
}

//annotate service.Supply with @UI.CreateHidden: ;
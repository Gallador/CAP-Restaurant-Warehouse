using CatalogService as service from '../../srv/catalog-service';

//annotate CatalogService.SupplyItems with @odata.draft.enabled;

annotate service.SupplyItems with @(
    Capabilities : {
        Deletable  : true,
        Insertable : true
    },
);
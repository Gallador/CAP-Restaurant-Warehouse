using CatalogService as service from '../../srv/catalog-service';

//annotate CatalogService.Supply with @odata.draft.enabled;

annotate CatalogService.Supply with @(
    Capabilities                    : {
        Deletable  : true,
        Insertable : true
    },
);
using CatalogService as service from '../../srv/catalog-service';

annotate service.Supply with @odata.draft.enabled;

annotate service.Supply with @(
    Capabilities : {
        Deletable  : true,
        Insertable : true
    },
);
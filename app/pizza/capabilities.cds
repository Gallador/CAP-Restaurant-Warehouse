using CatalogService as service from '../../srv/catalog-service';

annotate service.Pizza with @odata.draft.enabled;

annotate service.Pizza with @(Capabilities: {
    Deletable : true,
    Insertable: true
});

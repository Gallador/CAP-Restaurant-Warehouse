using CatalogService as service from '../../srv/catalog-service';

annotate service.Order with @odata.draft.enabled;

annotate service.Order with @(Capabilities: {
    Deletable : true,
    Insertable: true
});
using CatalogService as service from '../../srv/catalog-service';

annotate service.Grammar with @(Capabilities: {
    Deletable : true,
    Insertable: true
});
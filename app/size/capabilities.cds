using CatalogService as service from '../../srv/catalog-service';

annotate service.Size with @(Capabilities: {
    Deletable : true,
    Insertable: true
});
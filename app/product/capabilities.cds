using CatalogService from '../../srv/catalog-service';

annotate CatalogService.Product with @odata.draft.enabled;

annotate CatalogService.Product with @(
    Capabilities                    : {
        Deletable  : true,
        Insertable : true
    },
);

/* Capabilities.FilterRestrictions : {FilterExpressionRestrictions : [{
        Property           : 'readerBithday',
        AllowedExpressions : 'SingleValue'
    }]} */
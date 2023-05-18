using CatalogService as service from '../../srv/catalog-service';

annotate service.Grammar with {
    grammarID @readonly;
    product_ID @mandatory;
    basicGrammarAmount @mandatory;
}
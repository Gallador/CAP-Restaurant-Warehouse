using CatalogService as service from '../../srv/catalog-service';

annotate service.Grammar with {
    grammarID @title: '{i18n>GrammarID}';
    product_ID @title: '{i18n>ProductName}';
    basicGrammarAmount @title: '{i18n>BasicGrammarAmount}';
};
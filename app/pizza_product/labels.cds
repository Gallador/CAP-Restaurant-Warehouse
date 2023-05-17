using CatalogService as service from '../../srv/catalog-service';

annotate service.PizzaProduct with {
    recordID @title : '{i18n>recordID}';
};
using CatalogService as service from '../../srv/catalog-service';

annotate service.Order with {
    orderID   @title: '{i18n>orderID}';
    createdAt @title: '{i18n>OrderDate}';
};
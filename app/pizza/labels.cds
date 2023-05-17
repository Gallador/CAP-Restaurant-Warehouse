using CatalogService as service from '../../srv/catalog-service';

annotate service.Pizza with {
    pizzaID   @title: '{i18n>PizzaID}';
    pizzaName @title: '{i18n>PizzaName}';
};

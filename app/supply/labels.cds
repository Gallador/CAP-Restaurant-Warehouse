using CatalogService as service from '../../srv/catalog-service';

annotate service.Supply with {
    supplyID @title : '{i18n>SupplyID}';
    supplyDeliver @title : '{i18n>SupplyDeliver}';
    createdAt @title : '{i18n>createdAt}';
};
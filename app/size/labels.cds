using CatalogService as service from '../../srv/catalog-service';

annotate service.Size with {
    sizeID   @title: '{i18n>SizeID}';
    sizeName @title: '{i18n>SizeName}';
    sizeIndex @title: '{i18n>SizeIndex}';
};
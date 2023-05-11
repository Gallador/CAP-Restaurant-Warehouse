using from './catalog-service';

annotate CatalogService.Product with @(
    UI: {
        Identification: [ {Value: productName} ],
        SelectionFields: [ productName ],
        LineItem: [
            {Value: productID},
            {Value: productName},
            {Value: productBalance},
            {Value: productMeasurement}
        ],
        HeaderInfo: {
            TypeName: '{i18n>Product}',
            TypeNamePlural: '{i18n>Products}',
            Title: {Value: productName},
            Description: {Value: productMeasurement}
        }
    }
);

annotate CatalogService.Product with {
    productID @title:'{i18n>ProductID}' @UI.HiddenFilter;
    productName @title:'{i18n>ProductName}';
    productBalance @title:'{i18n>ProductBalance}';
    productMeasurement @title:'{i18n>ProductMeasurement}'
    /*@assert.enum
    @Common.ValueListWithFixedValues: true
    @Common.ValueList: {
        CollectionPath : '',
        Parameters : [
           {
               $Type : 'Common.ValueListParameterInOut',
               LocalDataProperty : productMeasurement,
               ValueListProperty : 'productMeasurement',
           },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'productMeasurement',
           }
        ]
    }*/;
}

/*annotate CatalogService.Authors with {
    ID @title:'{i18n>ID}' @UI.HiddenFilter;
    name @title:'{i18n>AuthorName}';
}*/
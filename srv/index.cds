using from './catalog-service';

annotate CatalogService.Product with @(
    UI: {
        Identification: [ {Value: productName} ],
        SelectionFields: [ productName ],
        LineItem: [
            {Value: productID},
            {Value: productName},
            {Value: productBalance},
            {$Type : 'UI.DataField', Value: productMeasurement.measDescription, Label :'{i18n>ProductMeasurement}'}
        ],
        HeaderInfo: {
            TypeName: '{i18n>Product}',
            TypeNamePlural: '{i18n>Products}',
            Title: {Value: productName},
            Description: {Value: productMeasurement.measDescription}
        }
    }
);

annotate CatalogService.Product with {
    productID @title:'{i18n>ProductID}' @UI.HiddenFilter;
    productName @title:'{i18n>ProductName}';
    productBalance @title:'{i18n>ProductBalance}';
    productMeasurement @title:'{i18n>ProductMeasurement}'
    @Common.Text: productMeasurement.measDescription
    @Common.TextArrangement: #TextOnly
    @Common.ValueListWithFixedValues: true
    @Common.ValueList: {
        CollectionPath : 'Measurement',
        Parameters : [
           {
               $Type : 'Common.ValueListParameterInOut',
               LocalDataProperty : productMeasurement_measCode,
               ValueListProperty : 'measCode',
           },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'measDescription',
           }
        ]
    };
}
using CatalogService as service from '../../srv/catalog-service';

annotate service.PizzaProduct with {
    recordID @title : '{i18n>recordID}';
    product @title : '{i18n>ProductName}'
    @Common.Text: product.productName
    @Common.TextArrangement: #TextOnly
    @Common.ValueListWithFixedValues: false
    @Common.ValueList: {
        CollectionPath : 'Product',
        Parameters : [
           {
               $Type : 'Common.ValueListParameterInOut',
               LocalDataProperty : product_ID,
               ValueListProperty : 'ID',
            },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'productName',
           },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'productMeasurement_measCode',
           }
        ]
    };
};
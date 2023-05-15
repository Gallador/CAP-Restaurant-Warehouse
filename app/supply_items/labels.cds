using CatalogService as service from '../../srv/catalog-service';

annotate service.SupplyItems with {
    //supply/ID  @title : '{i18n>SupplyID}';
    supplyAmount @title : '{i18n>supplyAmount}';
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
               ![@UI.Hidden],
            },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'productName',
           },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'productMeasurement',
           }
        ]
    };
};
using my.warehouse as warehouse from '../../db/schema';

/*annotate warehouse.SupplyItems {
    product
    @Common.ValueListWithFixedValues: true
    @Common.ValueList: {
        CollectionPath : '{Product}',
        Parameters : [
           {
               $Type : 'Common.ValueListParameterInOut',
               LocalDataProperty : product_ID,
               ValueListProperty : 'ID',
           },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'productName',
           }
        ]
    };
};*/
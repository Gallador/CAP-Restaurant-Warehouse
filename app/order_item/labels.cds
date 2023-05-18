using CatalogService as service from '../../srv/catalog-service';

annotate service.OrderItem with {
    itemID @title : '{i18n>itemID}';
    order @title : '{i18n>orderID}';
    orderQuantity @title : '{i18n>orderQuantity}';
    pizza @title : '{i18n>PizzaName}'
    @Common.Text: pizza.pizzaName
    @Common.TextArrangement: #TextOnly
    @Common.ValueListWithFixedValues: false
    @Common.ValueList: {
        CollectionPath : 'Pizza',
        Parameters : [
           {
               $Type : 'Common.ValueListParameterInOut',
               LocalDataProperty : pizza_ID,
               ValueListProperty : 'ID',
            },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'pizzaName',
           }
        ]
    };
    size @title : '{i18n>SizeName}'
    @Common.Text: size.sizeName
    @Common.TextArrangement: #TextOnly
    @Common.ValueListWithFixedValues: false
    @Common.ValueList: {
        CollectionPath : 'Size',
        Parameters : [
           {
               $Type : 'Common.ValueListParameterInOut',
               LocalDataProperty : size_ID,
               ValueListProperty : 'ID',
            },
           {
               $Type : 'Common.ValueListParameterDisplayOnly',
               ValueListProperty : 'sizeName',
           }
        ]
    };
}
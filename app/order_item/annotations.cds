using CatalogService as service from '../../srv/catalog-service';

annotate service.OrderItem with @(
    UI : { 
        Identification  : [ {Value: ID} ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : itemID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>orderID}',
                Value : order.orderID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PizzaName}',
                Value : pizza.pizzaName,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>SizeName}',
                Value : size.sizeName,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : orderQuantity,
                ![@UI.Importance] : #High
            }
        ],
        PresentationVariant  : {
            $Type : 'UI.PresentationVariantType',
            GroupBy : [
                order.ID
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : pizza.pizzaName,
                },
            ],
        },
        FieldGroup #OrderItemDetails : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Label : '{i18n>PizzaName}',
                Value : pizza_ID
                },
                {
                $Type : 'UI.DataField',
                Label : '{i18n>SizeName}',
                Value : size_ID
                },
                {
                $Type : 'UI.DataField',
                Label : '{i18n>orderQuantity}',
                Value : orderQuantity
                }
            ],
        },
        Facets  : [
        {
            $Type  : 'UI.CollectionFacet',
            ID     : 'OrderItemDetails',
            Label  : '{i18n>orderItemInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>orderItemInfo}',
                Target : '@UI.FieldGroup#OrderItemDetails'
            }]
        }
        ],
    },
);
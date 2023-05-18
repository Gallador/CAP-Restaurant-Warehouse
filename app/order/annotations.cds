using CatalogService as service from '../../srv/catalog-service';

annotate service.Order with @(
    UI : { 
        Identification  : [{Value: ID}],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : orderID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
                ![@UI.Importance] : #High
            },
        ],
        PresentationVariant  : {
            $Type : 'UI.PresentationVariantType',
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : orderID,
                    Descending: false
                },
            ],
        },
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>Order}',
            TypeNamePlural : '{i18n>OrderList}',
            Title : {Value: orderID},
            Description : {Value: createdAt}
        },
        Facets  : [
            {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Order Items',
            Target : 'toOrderItem/@UI.LineItem' 
            },
        ]
     },
);
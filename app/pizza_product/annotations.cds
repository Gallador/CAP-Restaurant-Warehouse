using CatalogService as service from '../../srv/catalog-service';

annotate service.PizzaProduct with @(
    UI : { 
        Identification  : [ {Value: ID} ],
        LineItem  : [ 
            {
                $Type : 'UI.DataField',
                Value : recordID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : pizza.pizzaID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ProductName}',
                Value : product_ID,
                ![@UI.Importance] : #High
            }
        ],
        PresentationVariant  : {
            $Type : 'UI.PresentationVariantType',
            GroupBy : [
                pizza.pizzaID
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : product.productName,
                },
            ],
        },
        FieldGroup #PizzaProductDetails : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Label : '{i18n>ProductName}',
                Value : product_ID
            },
            ]
        },
        Facets  : [
        {
            $Type  : 'UI.CollectionFacet',
            ID     : 'PizzaProductDetails',
            Label  : '{i18n>pizzaProductInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>pizzaProductInfo}',
                Target : '@UI.FieldGroup#PizzaProductDetails'
            }]
        }
        ],
     },
);
using CatalogService as service from '../../srv/catalog-service';

annotate service.Pizza with @(
    UI : { 
        Identification  : [{Value: pizzaID}],
        SelectionFields  : [ pizzaName ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : pizzaID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : pizzaName,
                ![@UI.Importance] : #High
            },
        ],
        PresentationVariant  : {
            $Type : 'UI.PresentationVariantType',
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : pizzaName,
                    Descending: false
                },
            ],
        },
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>Pizza}',
            TypeNamePlural : '{i18n>PizzaList}',
            Title : {Value: pizzaName},
            Description : {Value: pizzaID}
        },
        Facets  : [
            {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Pizza Products',
            Target : 'toPizzaProduct/@UI.LineItem' 
            },
        ]
    }
);
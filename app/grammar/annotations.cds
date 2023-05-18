using CatalogService as service from '../../srv/catalog-service';

annotate service.Grammar with @(
    UI : { 
        Identification  : [ {Value: ID},
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.FillGrammarList',
            Label : '{i18n>FillGrammarList}',
        }, ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : grammarID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : product.productName,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : basicGrammarAmount,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : product.productMeasurement.measDescription,
                ![@UI.Importance] : #High
            }
        ],
        PresentationVariant  : {
            $Type : 'UI.PresentationVariantType',
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : product.productName,
                    Descending: false
                },
            ],
        },
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>Grammar}',
            TypeNamePlural : '{i18n>GrammarList}',
            Title : {Value: product.productName},
            Description : {Value: basicGrammarAmount}
        },
     },
);
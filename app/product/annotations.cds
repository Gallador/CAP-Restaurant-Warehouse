using CatalogService as service from '../../srv/catalog-service';

annotate service.Product with @(
    UI : {
        FieldGroup #GeneratedGroup1 : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Value : productID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : productName,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : productBalance,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : productMeasurement,
                ![@UI.Importance] : #High
            }
            ],
        },
        FieldGroup #GeneratedGroup2 : {
            $Type : 'UI.FieldGroupType',
            Data : [
            {
                $Type : 'UI.DataField',
                Value : createdBy
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt
            }
            ]
        },
        Facets : [
        {
            $Type  : 'UI.CollectionFacet',
            ID     : 'ProductDetails',
            Label  : '{i18n>productInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>productInfo}',
                Target : '@UI.FieldGroup#GeneratedGroup1'
            }]
        },
        {
            $Type  : 'UI.CollectionFacet',
            ID     : 'Admininfo',
            Label  : '{i18n>adminInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>admininfo}',
                Target : '@UI.FieldGroup#GeneratedGroup2'
            }]
        }
    ]
    },
    Common.SortOrder : [{
        $Type : 'Common.SortOrderType',
        Property : productName,
        Descending : false,
    }]
);


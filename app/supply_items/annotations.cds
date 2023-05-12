using CatalogService as service from '../../srv/catalog-service';

annotate service.SupplyItems with @(
    UI: {
        Identification  : [ {Value: ID} ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : supply.supplyID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : 'Product',
                Value : product_ID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : supplyAmount,
                ![@UI.Importance] : #High
            }
        ],
        PresentationVariant  : {
            $Type : 'UI.PresentationVariantType',
            GroupBy : [
                supply_ID
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : product.productName,
                },
            ],
        },
        FieldGroup #SupplyItemDetails : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Label : '{i18n>ProductName}',
                Value : product_ID
            },
            {
                $Type : 'UI.DataField',
                Value : supplyAmount,
            },
            ]
        },
        Facets  : [
        {
            $Type  : 'UI.CollectionFacet',
            ID     : 'SupplyItemDetails',
            Label  : '{i18n>supplyItemInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>supplyItemInfo}',
                Target : '@UI.FieldGroup#SupplyItemDetails'
            }]
        }
        ],
    }
);
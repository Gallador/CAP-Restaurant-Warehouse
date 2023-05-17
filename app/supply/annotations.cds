using CatalogService as service from '../../srv/catalog-service';

annotate service.Supply with @(
    UI: {
        Identification : [ {Value: supplyDeliver} ],
        SelectionFields : [ supplyDeliver, createdAt ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : supplyID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : supplyDeliver,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : supplyStatus,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
                ![@UI.Importance] : #High
            }
        ],
        PresentationVariant  : {
            $Type : 'UI.PresentationVariantType',
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : supplyID,
                    Descending: false
                },
            ],
        },
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>Supply}',
            TypeNamePlural : '{i18n>Supplies}',
            Title : {Value: supplyID},
            Description : {Value: supplyDeliver}
        },
        FieldGroup #SupplyDetails : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Value : supplyID,
            },
            {
                $Type : 'UI.DataField',
                Value : supplyDeliver,
            },
            {
                $Type : 'UI.DataField',
                Value : supplyStatus,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            }
            ],
        },
        FieldGroup #AdminData : {
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
            ID     : 'SupplyDetails',
            Label  : '{i18n>supplyInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>supplyInfo}',
                Target : '@UI.FieldGroup#SupplyDetails'
            }]
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Supply Items',
            Target : 'toSupplyItems/@UI.LineItem' 
        },
        {
            $Type  : 'UI.CollectionFacet',
            ID     : 'Admininfo',
            Label  : '{i18n>adminInfo}',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                Label  : '{i18n>admininfo}',
                Target : '@UI.FieldGroup#AdminData'
            }]
        },
    ]
    }
);
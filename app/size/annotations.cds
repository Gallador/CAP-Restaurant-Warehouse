using CatalogService as service from '../../srv/catalog-service';

annotate service.Size with @(
    UI : { 
        Identification  : [ {Value: ID} ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : sizeID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : sizeName,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : sizeIndex,
                ![@UI.Importance] : #High
            }
        ],
        PresentationVariant  : {
            $Type : 'UI.PresentationVariantType',
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : sizeName,
                    Descending: false
                },
            ],
        },
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>Size}',
            TypeNamePlural : '{i18n>SizeList}',
            Title : {Value: sizeName},
            Description : {Value: sizeIndex}
        },
     },
);
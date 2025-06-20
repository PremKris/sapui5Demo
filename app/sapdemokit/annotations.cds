using CatalogService as service from '../../srv/cat-service';
using from '../../db/schema';

annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'chapters',
            ID : 'chapters',
            Target : 'bookentity/@UI.LineItem#chapters',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stock',
            Value : stock,
        },
    ],
);

annotate service.Chapters with @(
    UI.LineItem #chapters : [
        {
            $Type : 'UI.DataField',
            Value : chaptersEntity.ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : chaptersEntity.stock,
            Label : 'stock',
        },
        {
            $Type : 'UI.DataField',
            Value : chaptersEntity.title,
            Label : 'title',
        },
    ]
);


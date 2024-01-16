using RiskService as service from '../../srv/risk-service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Title}',
            Value : title,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : 'bp/@Communication.Contact#contact1',
            Label : 'Contact Name',
        },
        {
            $Type : 'UI.DataField',
            Label : 'owner',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Priority}',
            Value : prio_code,
            Criticality : PrioCriticality,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Impact}',
            Value : impact,
            Criticality : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Value : bp_BusinessPartner,
            Label : 'bp_BusinessPartner',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : 'bp/@Communication.Contact#contact',
            Label : 'Contact Name',
        },
    ]
);
annotate service.Risks with {
    miti @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : miti_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descr',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'timeline',
            },
        ],
    }
};
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio_code',
                Value : prio_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PrioCriticality',
                Value : PrioCriticality,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Subscription}',
            ID : 'i18nSubscription',
            Target : '@UI.FieldGroup#i18nSubscription',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>MitigationDetails}',
            ID : 'i18nMitigationDetails',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Mitigation}',
                    ID : 'i18nMitigation',
                    Target : '@UI.FieldGroup#i18nMitigation',
                },],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>RiskDetails}',
            ID : 'i18nRiskDetails',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Details}',
                    ID : 'i18nDetails',
                    Target : '@UI.FieldGroup#i18nDetails',
                },],
        },]
);
annotate service.Risks with @(
    UI.SelectionFields : [
        prio_code,
    ]
);
annotate service.Risks with {
    prio @Common.Label : '{i18n>Priocode}'
};
annotate service.Risks with @(
    UI.HeaderInfo : {
        TypeImageUrl : 'sap-icon://alert',
        TypeName : '',
        TypeNamePlural : '',
    }
);
annotate service.Risks with @(
    UI.FieldGroup #i18nSubscription : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'title',
            },{
                $Type : 'UI.DataField',
                Value : owner,
                Label : 'owner',
            },{
                $Type : 'UI.DataField',
                Value : miti.descr,
                Label : 'descr',
            },],
    }
);
annotate service.Risks with @(
    UI.FieldGroup #i18nMitigation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti.owner,
                Label : 'owner',
            },{
                $Type : 'UI.DataField',
                Value : miti.timeline,
                Label : 'timeline',
            },{
                $Type : 'UI.DataField',
                Value : miti.descr,
                Label : 'descr',
            },{
                $Type : 'UI.DataField',
                Value : miti.modifiedAt,
            },{
                $Type : 'UI.DataField',
                Value : miti.modifiedBy,
            },{
                $Type : 'UI.DataField',
                Value : miti.ID,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : miti.createdAt,
            },{
                $Type : 'UI.DataField',
                Value : miti.createdBy,
            },],
    }
);
annotate service.Risks with @(
    UI.FieldGroup #i18nDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti.risks.createdAt,
            },{
                $Type : 'UI.DataField',
                Value : miti.risks.createdBy,
            },{
                $Type : 'UI.DataField',
                Value : miti.risks.criticality,
                Label : 'criticality',
                Criticality : criticality,
            },{
                $Type : 'UI.DataField',
                Value : miti.risks.descr,
                Label : 'descr',
            },{
                $Type : 'UI.DataField',
                Value : miti.risks.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : impact,
                Label : 'impact',
            },
            {
                $Type : 'UI.DataField',
                Value : prio_code,
                Criticality : criticality,
            },
            {
                $Type : 'UI.DataField',
                Value : PrioCriticality,
                Label : 'PrioCriticality',
                Criticality : PrioCriticality,
            },],
    }
);
annotate service.Risks with {
    prio @Common.Text : {
            $value : prio.descr,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.BusinessPartners with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : FullName,
    }
);
annotate service.BusinessPartners with @(
    Communication.Contact #contact1 : {
        $Type : 'Communication.ContactType',
        fn : FullName,
    }
);

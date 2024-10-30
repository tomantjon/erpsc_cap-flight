using FlightService as service from '../../srv/flight-service';

annotate service.Flight with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ConnectionID',
            Value : ConnectionID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FlightDate',
            Value : FlightDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AirlineID',
            Value : AirlineID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : Price,
        },
        {
            $Type : 'UI.DataField',
            Value : CurrencyCode_code,
        },
    ]
);
annotate service.Flight with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'AirlineID',
                Value : AirlineID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FlightDate',
                Value : FlightDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ConnectionID',
                Value : ConnectionID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : Price,
            },
            {
                $Type : 'UI.DataField',
                Value : CurrencyCode_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PlaneType',
                Value : PlaneType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaximumSeats',
                Value : MaximumSeats,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OccupiedSeats',
                Value : OccupiedSeats,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

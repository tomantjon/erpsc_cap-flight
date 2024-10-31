using FlightService as service from '../../srv/flight-service';
using from './annotations';


annotate service.Flight with @(
    odata.draft.enabled,
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ],
    UI.FieldGroup #FlightConnection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_Connection.ArrivalTime,
                Label : 'ArrivalTime',
            },
            {
                $Type : 'UI.DataField',
                Value : to_Connection.DepartureTime,
                Label : 'DepartureTime',
            },
            {
                $Type : 'UI.DataField',
                Value : to_Connection.Distance,
                Label : 'Distance',
            },
            {
                $Type : 'UI.DataField',
                Value : to_Connection.DistanceUnit,
                Label : 'DistanceUnit',
            },
        ],
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Flight',
            Value : AirlineID,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FlightDate',
            Value : FlightDate,
        },
        {
            $Type : 'UI.DataField',
            Value : to_Airline.Name,
            Label : 'Airline',
        },
        {
            $Type : 'UI.DataField',
            Value : PlaneType,
            Label : 'PlaneType',
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : Price,
        },
    ],
    UI.SelectionFields : [
        FlightDate,
        to_Airline.Name,
    ],
);
annotate service.Flight with {
    AirlineID @Common.Text : {
        $value : ConnectionID,
        ![@UI.TextArrangement] : #TextLast
    }
};

annotate service.Flight with {
    Price @Common.Text : {
        $value : CurrencyCode_code,
        ![@UI.TextArrangement] : #TextLast
    }
};

annotate service.Flight with {
    FlightDate @(
        Common.Label : 'FlightDate',
        )
};

annotate service.Airline with {
    Name @(
        Common.Label : 'Airline',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Airline',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Name,
                    ValueListProperty : 'Name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};


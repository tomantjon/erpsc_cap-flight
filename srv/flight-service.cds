using {sap.fe.cap.travel as my} from '../db/data-model';

service FlightService {

  entity Airline          as projection on my.Airline;
  entity Flight           as projection on my.Flight;
  entity FlightConnection as projection on my.FlightConnection;
  entity Airport          as projection on my.Airport;
}

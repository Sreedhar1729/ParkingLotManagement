namespace parking.db;


using {managed} from '@sap/cds/common';


define entity ParkingLot {
    key id     : Integer;
        inward : Boolean;
        length : String;
}


define entity ParkignVeh : managed {
    key id         : UUID;
        truckNo    : String;
        driverName : String;
        driverMob  : Integer;
};

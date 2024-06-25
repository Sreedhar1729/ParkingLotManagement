namespace parking.db;


define entity ParkingLot {
    key id             : Integer;
        inward         : Boolean;
        length         : String;
        reserveparking : Association to ReserveParking
                             on reserveparking.parkinglot = $self;
        parkingveh     : Association to ParkignVeh
                             on parkingveh.parkinglot = $self;
}


define entity ParkignVeh {
    key id         : UUID;
        truckNo    : String;
        driverName : String;
        driverMob  : Integer;
        enterDate  : Date;
        enterTime  : Time;
        exitDate   : Date;
        exitTime   : Time;
        parkinglot : Composition of ParkingLot;
    
};


define entity ReserveParking {
    key id           : UUID;
        truckNo      : String;
        driverName   : String;
        driverMob    : Integer;
        resStartDate : Date;
        resStartTime : Time;
        confDate     : Date;
        confTime     : Time;
        res_staus    : Boolean;
        parkinglot   : Association to ParkingLot;
}

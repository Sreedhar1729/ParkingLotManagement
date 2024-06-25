using parking.db as my from '../db/data-model.cds';

service ParkingService {
    entity ParkingLot as projection on my.ParkingLot;
}

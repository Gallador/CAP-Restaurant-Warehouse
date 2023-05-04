namespace my.warehouse;

using { cuid, managed } from '@sap/cds/common';


entity Product : cuid, managed {
    productID : Integer;
    productName : String;
    productBalance : Decimal;
    toMeasurement : Association to Measurement;
}

entity Measurement : cuid, managed {
    measurementID : Integer;
    measurementName : String;
    toProduct : Association to many Product on toProduct.toMeasurement = $self;
}
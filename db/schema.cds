namespace my.warehouse;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

entity Product : cuid, managed
{
    productID : Integer;
    productName : String;
    productBalance : Decimal;
    productMeasurement : Association to one Measurement;
    toPizzaProduct : Composition of many PizzaProduct on toPizzaProduct.product = $self;
    toGrammar : Composition of one Grammar on toGrammar.product = $self;
    toSupplyItems : Association to many SupplyItems on toSupplyItems.product = $self; //Composition of many SupplyItems on toSupplyItems.product = $self
}

entity Measurement : managed 
{
    key measCode : String;
    measDescription : String;
}

entity Pizza : cuid, managed
{
    pizzaID : Integer;
    pizzaName : String;
    toPizzaProduct : Composition of many PizzaProduct on toPizzaProduct.pizza = $self;
    toOrderItem : Composition of many OrderItem on toOrderItem.pizza = $self;
}

entity PizzaProduct : cuid, managed
{
    recordID : Integer;
    pizza : Association to one Pizza;
    product : Association to one Product;
}

entity Order : cuid, managed
{
    orderID : Integer;
    orderQuantity : Decimal;
    toOrderItem : Composition of many OrderItem on toOrderItem.order = $self;
}

entity OrderItem : cuid, managed
{
    itemID : Integer;
    order : Association to one Order;
    pizza : Association to one Pizza;
    size : Association to one Size;
}

entity Size : cuid, managed
{
    sizeID : Integer;
    sizeName : String;
    sizeIndex : Decimal;
    toOrderItem : Composition of many OrderItem on toOrderItem.size = $self;
}

entity Grammar : cuid, managed
{
    grammarID : Integer;
    product : Association to one Product;
    basicGrammarAmount : Decimal;
}

entity Supply : cuid, managed
{
    supplyID : Integer;
    toSupplyItems : Composition of many SupplyItems on toSupplyItems.supply = $self;
    supplyDeliver : String;
}

entity SupplyItems : cuid, managed
{
    supply : Association to one Supply;
    product : Association to one Product;
    supplyAmount : Decimal;
}
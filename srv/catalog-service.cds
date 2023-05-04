using my.warehouse as my from '../db/schema';

service CatalogService {
    entity Product as projection on my.Product;
    entity Measurement as projection on my.Measurement;
}
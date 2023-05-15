const cds = require('@sap/cds');
const db = cds.db;

module.exports = cds.service.impl(async function () {

    let { Supply, SupplyItems, Product } = this.entities;

    recordID = 0;

    this.before('NEW', 'Supply', async(req)=>{
        const{maxID} = await SELECT.one`max(supplyID) as maxID`.from(Supply);
        req.data.supplyID = maxID + 1;
        recordID = req.data.supplyID;
    });

    /*this.after('CREATE', 'Supply', async(req)=>{
        const {supplyItems} = await SELECT `product_id as supplyItems`.from(SupplyItems).where({supply_id:req.data.ID});//req.data.supplyID); //db.read('SELECT productBalance FROM Product as p WHERE p.ID = ', [req.data.product_id]);
        a = 0;  
    });*/

})
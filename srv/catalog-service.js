const cds = require('@sap/cds');
const db = cds.db;

module.exports = cds.service.impl(async function () {

    let { Supply, SupplyItems, Product } = this.entities;

    this.before('NEW', 'Supply', async (req) => {
        const { maxID } = await SELECT.one`max(supplyID) as maxID`.from(Supply);
        req.data.supplyID = maxID + 1;
        req.data.supplyStatus = 'NEW';
    });

    this.after('CREATE', 'Supply', async (req) => {
        const { toSupplyItems } = req;
        toSupplyItems.forEach(async supplyItem => {
            const { product_ID, supplyAmount } = supplyItem;
            await UPDATE(Product, product_ID).with({ productBalance: { '+=': supplyAmount } });
        })
    });

    this.on('CANCEL', 'SupplyItems', async (req) => {
        const { ID } = req.data;
        const supplyItem = await SELECT.one.from(SupplyItems).where({ID:ID})
        const {product_ID, supplyAmount} = supplyItem
        await UPDATE(Product, product_ID).with({ productBalance: {'-=': supplyAmount} });
    })

})
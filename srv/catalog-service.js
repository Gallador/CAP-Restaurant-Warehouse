const cds = require('@sap/cds');
const db = cds.db;

module.exports = cds.service.impl(async function () {

    let { Supply, SupplyItems, Product, Pizza, PizzaProduct, Grammar, Order, OrderItem } = this.entities;

    this.before('NEW', 'Supply', async (req) => {
        const { maxID } = await SELECT.one`max(supplyID) as maxID`.from(Supply);
        req.data.supplyID = maxID + 1;
        req.data.supplyStatus = 'NEW';
    });

    this.before('NEW', 'Pizza', async (req) => {
        const { maxID } = await SELECT.one`max(pizzaID) as maxID`.from(Pizza);
        req.data.pizzaID = maxID + 1;
    });

    this.before('NEW', 'PizzaProduct', async (req) => {
        const { maxID } = await SELECT.one`max(recordID) as maxID`.from(PizzaProduct);
        req.data.recordID = maxID + 1;
    });

    this.before('NEW', 'Order', async (req) => {
        const { maxID } = await SELECT.one`max(orderID) as maxID`.from(Order);
        req.data.orderID = maxID + 1;
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
    });

    this.on('FillGrammarList', 'Grammar', async (req) => {
        const products = await SELECT.from(Product);
        products.forEach( async product => {
            const { ID, productName } = product;
            if (productName == 'Tomato sauce') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(1,ID,0.1);
            };
            if (productName == 'Cream sauce') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(2,ID,30);
            };
            if (productName == 'Olive oil') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(3,ID,0.02);
            };
            if (productName == 'Mozzarella') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(4,ID,0.1);
            };
            if (productName == 'Cheddar') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(5,ID,10);
            };
            if (productName == 'Gorgonzola') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(6,ID,10);
            };
            if (productName == 'Tomatoes') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(7,ID,1);
            };
            if (productName == 'Mushrooms') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(8,ID,0.1);
            };
            if (productName == 'Olives') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(9,ID,10);
            };
            if (productName == 'Corn') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(10,ID,10);
            };
            if (productName == 'Jalapeno') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(11,ID,10);
            };
            if (productName == 'Sweet pepper') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(12,ID,0.5);
            };
            if (productName == 'Onion') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(13,ID,0.02);
            };
            if (productName == 'Bacon') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(14,ID,0.1);
            };
            if (productName == 'Salami') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(15,ID,0.1);
            };
            if (productName == 'Pepperoni') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(16,ID,0.1);
            };
            if (productName == 'Chorizo') {
                await INSERT.into(Grammar).columns('grammarID','product_ID','basicGrammarAmount').values(17,ID,0.05);
            };
        });
    });

})
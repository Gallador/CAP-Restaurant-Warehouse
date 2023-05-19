//@ui5-bundle supplyitems/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"supplyitems/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("supplyitems.Component",{metadata:{manifest:"json"}})});
},
	"supplyitems/i18n/i18n.properties":'# This is the resource bundle for supplyitems\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Supply Items\n\n#YDES: Application description\nappDescription=A Fiori application.',
	"supplyitems/manifest.json":'{"_version":"1.49.0","sap.app":{"id":"supplyitems","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.9.6","toolsId":"e86ce279-e0cd-4b88-8920-949e9f09578e"},"dataSources":{"mainService":{"uri":"catalog/","type":"OData","settings":{"annotations":[],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.113.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"supplyitems.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"SupplyItemsList","target":"SupplyItemsList"},{"pattern":"SupplyItems({key}):?query:","name":"SupplyItemsObjectPage","target":"SupplyItemsObjectPage"}],"targets":{"SupplyItemsList":{"type":"Component","id":"SupplyItemsList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"SupplyItems","variantManagement":"Page","navigation":{"SupplyItems":{"detail":{"route":"SupplyItemsObjectPage"}}}}}},"SupplyItemsObjectPage":{"type":"Component","id":"SupplyItemsObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"SupplyItems"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"}}'
}});

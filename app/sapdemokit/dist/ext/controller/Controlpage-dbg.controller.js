sap.ui.define(['sap/ui/core/mvc/ControllerExtension', "sap/m/Button",], function (ControllerExtension, Button) {
	'use strict';

	return ControllerExtension.extend('sapdemokit.ext.controller.Controlpage', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
			 * Called when a controller is instantiated and its View controls (if available) are already created.
			 * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
			 * @memberOf sapdemokit.ext.controller.Controlpage
			 */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
				// Create a button

			},
			routing: {
				onAfterBinding: function (mBindingInfos) {
					debugger
					let oSection = sap.ui.getCore().byId("sapdemokit::BooksObjectPage--fe::FacetSubSection::GeneratedFacet1");
					let oSectionAll = sap.ui.getCore().byId('sapdemokit::BooksObjectPage--fe::ObjectPage');

					var oButton = new Button({
						text: "Click Me",
						press: function () {
							MessageToast.show("Button was clicked!");
						}
					});
					oSectionAll.setBusy(true);
					oSection.addAction(oButton);
					oSection.addBlock(oButton);
					// oSection.setBusy(true);
					setTimeout(() => {
						oSectionAll.setBusy(false);
						
					}, 5000);
				}
			}
		}
	});
});

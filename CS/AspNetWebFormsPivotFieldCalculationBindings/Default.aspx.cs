using DevExpress.Web.ASPxPivotGrid;
using System;
using System.Web.UI;

namespace AspNetWebFormsPivotFieldCalculationBindings {
    public partial class _Default: Page {
        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack && !IsCallback) {
                PivotGridField fieldProductName = ASPxPivotGrid1.Fields["fieldProductName"];
                PivotGridField fieldCountry = ASPxPivotGrid1.Fields["fieldCountry"];
                ASPxPivotGrid1.BeginUpdate();
                try {
                    fieldProductName.FilterValues.Clear();
                    fieldProductName.FilterValues.Add("Chai");
                    fieldProductName.FilterValues.Add("Chang");
                    fieldProductName.FilterValues.Add("Chartreuse verte");
                    fieldProductName.FilterValues.Add("Ipoh Coffee");
                    fieldProductName.FilterValues.Add("Aniseed Syrup");
                    fieldProductName.FilterValues.Add("Genen Shouyu");
                    fieldProductName.FilterValues.Add("Gula Malacca");
                    fieldProductName.FilterValues.Add("Vegie-spread");
                    fieldCountry.FilterValues.Add("UK");
                    fieldProductName.FilterValues.FilterType = DevExpress.XtraPivotGrid.PivotFilterType.Included;
                    fieldCountry.FilterValues.FilterType = DevExpress.XtraPivotGrid.PivotFilterType.Included;
                } finally {
                    ASPxPivotGrid1.EndUpdate();
                }
            }
        }
    }
}
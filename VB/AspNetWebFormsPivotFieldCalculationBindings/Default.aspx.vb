Imports DevExpress.Web.ASPxPivotGrid
Imports System
Imports System.Web.UI

Namespace AspNetWebFormsPivotFieldCalculationBindings
	Partial Public Class _Default
		Inherits Page

		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			If Not IsPostBack AndAlso Not IsCallback Then
				Dim fieldProductName As PivotGridField = ASPxPivotGrid1.Fields("fieldProductName")
				Dim fieldCountry As PivotGridField = ASPxPivotGrid1.Fields("fieldCountry")
				ASPxPivotGrid1.BeginUpdate()
				Try
					fieldProductName.FilterValues.Clear()
					fieldProductName.FilterValues.Add("Chai")
					fieldProductName.FilterValues.Add("Chang")
					fieldProductName.FilterValues.Add("Chartreuse verte")
					fieldProductName.FilterValues.Add("Ipoh Coffee")
					fieldProductName.FilterValues.Add("Aniseed Syrup")
					fieldProductName.FilterValues.Add("Genen Shouyu")
					fieldProductName.FilterValues.Add("Gula Malacca")
					fieldProductName.FilterValues.Add("Vegie-spread")
					fieldCountry.FilterValues.Add("UK")
					fieldProductName.FilterValues.FilterType = DevExpress.XtraPivotGrid.PivotFilterType.Included
					fieldCountry.FilterValues.FilterType = DevExpress.XtraPivotGrid.PivotFilterType.Included
				Finally
					ASPxPivotGrid1.EndUpdate()
				End Try
			End If
		End Sub
	End Class
End Namespace
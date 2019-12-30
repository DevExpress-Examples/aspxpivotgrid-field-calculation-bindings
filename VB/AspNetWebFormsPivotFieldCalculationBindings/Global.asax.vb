Imports System
Imports System.Web
Imports System.Web.Optimization
Imports System.Web.Routing

Namespace AspNetWebFormsPivotFieldCalculationBindings
	Public Class [Global]
		Inherits HttpApplication
		Private Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
			' Code that runs on application startup
			RouteConfig.RegisterRoutes(RouteTable.Routes)
			BundleConfig.RegisterBundles(BundleTable.Bundles)
		End Sub
	End Class
End Namespace
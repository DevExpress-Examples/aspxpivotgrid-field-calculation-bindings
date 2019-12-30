'INSTANT VB NOTE: This code snippet uses implicit typing. You will need to set 'Option Infer On' in the VB file or set 'Option Infer' at the project level:

<%@ Control Language="vb" AutoEventWireup="true" CodeBehind="ViewSwitcher.ascx.vb" Inherits="AspNetWebFormsPivotFieldCalculationBindings.ViewSwitcher" %>
<div id="viewSwitcher">
<%
	  :
%>
	   view | <a href="
<%
	  CurrentView :
%>
		 " data-ajax="false">Switch to 
<%
	  SwitchUrl :
%>
		   </a>
</div>
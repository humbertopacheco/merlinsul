<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="WEB-INF/c.tld" prefix="c"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" errorPage="error.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<f:view>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>:::Condom&iacute;nio MERLIN SUL:::</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0" leftmargin="0" background="imagens/fundoPagina.gif">
<script type="text/javascript" src="js/item_menu.js"></script>
<script type="text/javascript" src="js/menu_com.js"></script>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
  <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="1%"><img src="imagens/top1.gif" width="440" height="82"></td>
        <td width="98%" background="imagens/fundoAzul.gif"><img src="imagens/transp.gif" width="25" height="82"></td>
        <td width="1%"><img src="imagens/top2.gif" width="315" height="82"></td>
      </tr>
    </table>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="1%" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><img src="imagens/top3.gif" width="164" height="42"></td>
          </tr>
          <tr>
            <td><img src="imagens/transp.gif" width="129" height="10"></td>
          </tr>
        </table>
      <td width="99%">&nbsp;
        <!-- inicio do conteudo -->
	<h:form>
        <table border="0">
          <tr>
            <td colspan="3"><h2>Impressao de Proprietarios </h2></td>
          </tr>
          <tr>
            <td colspan="3"><h:commandButton value="Consultar" action="#{imprimirProprietarios.doImprimir}" styleClass="botao" /></td>
          </tr>
          <tr>
            <td colspan="3"><h:outputText value="#{flagOk}"/>
			</td>
          </tr>
 
          
        </table>
        </h:form>          
<c:if test="${imprimirProprietarios.flagOk}">
			<form name="frmBoleto" action="printreport" method="post" target="_blank">
			</form>
			 <script> 
				document.frmBoleto.submit();
			</script>
</c:if>		

</td>
</body>
</f:view>
</html>

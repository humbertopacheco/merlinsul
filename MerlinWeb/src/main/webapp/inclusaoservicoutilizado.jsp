<%@ taglib uri="WEB-INF/html_basic.tld" prefix="h" %>
<%@ taglib uri="WEB-INF/jsf_core.tld" prefix="f" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" errorPage="error.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <f:view>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
            <title>:::Condom&iacute;nio MERLIN SUL:::</title>
            <link href="css/estilo.css" rel="stylesheet" type="text/css">
            <link href="css/buttons.css" rel="stylesheet" type="text/css">
        </head>
        <body topmargin="0" leftmargin="0" background="imagens/fundoPagina.gif">
            <script type="text/javascript" src="js/item_menu.js"></script>
            <script type="text/javascript" src="js/menu_com.js"></script>
            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td valign="top">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
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
                                <td width="99%">
                                    &nbsp;
                                    <!-- inicio do conteudo -->
                                    <h:form id="formTb" >
                                        <h:inputHidden id="codigoServicoUtilizado" value="#{incluirServicoUtilizado.codigoServicoUtilizado}"/>
                                        <table border="0">
                                            <tr>
                                                <td colspan="3"><h2>Inclus&atilde;o de Servi&ccedil;o Utilizado</h2>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="input_formulario">Apartamento:</td>
                                                <td>
                                                    <h:selectOneMenu id="codigoApartamento" value="#{incluirServicoUtilizado.codigoApartamento}" styleClass="styled-select" required="true">
                                                        <f:selectItems value="#{combos.comboApartamento}"/>
                                                    </h:selectOneMenu >
                                                </td>
                                                <td><h:message for="codigoApartamento" errorClass="erros"/></td>
                                            </tr>
                                            <tr>
                                                <td>Servi&ccedil;o:</td>
                                                <td>
                                                    <h:selectOneMenu id="codigoServico" value="#{incluirServicoUtilizado.codigoServico}" styleClass="styled-select" required="true">
                                                        <f:selectItems value="#{combos.comboServico}"/>
                                                    </h:selectOneMenu >
                                                </td>
                                                <td><h:message for="codigoServico" errorClass="erros"/></td>
                                            </tr>
                                            <tr>
                                                <td>Data da utiliza&ccedil;&atilde;o:</td>
                                                <td><h:inputText id="dataUtilizacao" value="#{incluirServicoUtilizado.dataUtilizacao}" required="true" size="10" maxlength="10" >
                                                        <f:convertDateTime pattern="dd/MM/yyyy"/>
                                                    </h:inputText>
                                                    (dd/mm/aaaa)</td>
                                                <td><h:message for="dataUtilizacao" errorClass="erros"/></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"><h:commandButton value="Salvar" action="#{incluirServicoUtilizado.doIncluir}" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3"><h:outputText value="#{incluirServicoUtilizado.mensagem}" styleClass="mensagem"/></td>
                                            </tr>
                                        </h:form>
                                    </table>
                                    </body>
                                </f:view>
                                </html>

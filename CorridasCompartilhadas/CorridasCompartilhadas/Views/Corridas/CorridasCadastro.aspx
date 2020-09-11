<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CorridasCadastro.aspx.cs" Inherits="CorridasCompartilhadas.Views.CorridasCadastro.CorridasCadastro" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<html xmlns="http://www.w3.org/1999/xhtml">
    <body>
        <div id="form1" name="form1" runat="server">
                       <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5f30e2a790832f3e96009402"/>

                        <style type="text/css" id="form-designer-style">
                            /* Injected CSS Code */
                        .form-label.form-label-auto {
        
                                display: inline-block;
                                float: left;
                                text-align: left;
      
                              }
                            /* Injected CSS Code */
                        </style>
                          <div role="main" class="form-all" style="max-width: 1000px;">
                            <ul class="form-section page-section">
                                      <li id="cidTitle" class="form-input-wide" data-type="control_head">
                                        <div class="form-header-group  header-large">
                                          <div class="header-text httal htvam">
                                            <h1 id="headerTitle" class="form-header" data-component="header">
                                              Corridas
                                            </h1>
                                            <div id="subHeaderTitle" class="form-subHeader">
                                              Cadastro de Corridas
                                            </div>
                                          </div>
                                        </div>
                                      </li>


                                <!-- Valor da Corrida -->
                             <li class="form-line jf-required" data-type="control_phone" id="idValor">
                                <label class="form-label form-label-left" id="labelValor" for="inputValor">
                                  Valor da Corrida
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidValor" class="form-input jf-required" data-layout="half">
                                  <span class="form-sub-label-container " style="vertical-align:top">
                                    <asp:TextBox runat="server" id="inputValor"  name="Valor" class="classValor form-textbox validate[required, Fill Mask]" OnKeyUp="ValueOnKeyPress()" style="width:310px" data-masked="true" MaxLength="5" value="" minLength="3" placeholder="R$999,99" data-component="Valor" aria-labelledby="labelValor" required="" />
                                    <label class="form-sub-label" for="inputPhone" id="sublabelValor" style="min-height:13px" aria-hidden="false">
                                    <span class="spanError form-required" id="spanErrorValor">
                                            * Campo Inválido
                                        </span>
                                    </label>
                                  </span>
                                </div>
                              </li>

                                <!--Cidade Origem-->
                             <li class="form-line jf-required" data-type="control_phone" id="idCidadeOrigem">
                                <label class="form-label form-label-left" id="labelCidadeOrigem" for="inputCidadeOrigem">
                                  Cidade de Origem
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidCidadeOrigem" class="form-input jf-required" data-layout="half">
                                  <span class="form-sub-label-container " style="vertical-align:top">
                                    <asp:TextBox runat="server" id="inputCidadeOrigem"  name="CidadeOrigem" class="classCidadeOrigem form-textbox validate[required, Fill Mask]" OnKeyUp="ValueOnKeyPress()" style="width:310px" data-masked="true" value="" minLegnth="2" maxlenght="40" placeholder="Ex.: São José dos Campos" data-component="CidadeOrigem" aria-labelledby="labelCidadeOrigem" required="" />
                                    <label class="form-sub-label" for="inputCidadeOrigem" id="sublabelCidadeOrigem" style="min-height:13px" aria-hidden="false">
                                    <span class="spanError form-required" id="spanErrorCidadeOrigem">
                                            * Campo Inválido
                                        </span>
                                    </label>
                                  </span>
                                </div>
                              </li>


                            <!--UF Origem-->
                             <li class="form-line jf-required" data-type="control_dropdown" id="idUfOrigem">
                                <label class="form-label form-label-left" id="labelUfOrigem" for="selectUfOrigem">
                                  Estado de Origem
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidUfOrigem" class="form-input jf-required" data-layout="half">
                                  <select runat="server" class="classUfOrigem form-dropdown validate[required]" id="selectUfOrigem" name="UfOrigem" style="width:310px" data-component="dropdown" required="" aria-labelledby="labelUfOrigem">
                                    <option>  </option>
                                    	<option value="AC">Acre</option>
	                                <option value="AL">Alagoas</option>
	                                <option value="AP">Amapá</option>
	                                <option value="AM">Amazonas</option>
	                                <option value="BA">Bahia</option>
	                                <option value="CE">Ceará</option>
	                                <option value="DF">Distrito Federal</option>
	                                <option value="ES">Espírito Santo</option>
	                                <option value="GO">Goiás</option>
	                                <option value="MA">Maranhão</option>
	                                <option value="MT">Mato Grosso</option>
	                                <option value="MS">Mato Grosso do Sul</option>
	                                <option value="MG">Minas Gerais</option>
	                                <option value="PA">Pará</option>
	                                <option value="PB">Paraíba</option>
	                                <option value="PR">Paraná</option>
	                                <option value="PE">Pernambuco</option>
	                                <option value="PI">Piauí</option>
	                                <option value="RJ">Rio de Janeiro</option>
	                                <option value="RN">Rio Grande do Norte</option>
	                                <option value="RS">Rio Grande do Sul</option>
	                                <option value="RO">Rondônia</option>
	                                <option value="RR">Roraima</option>
	                                <option value="SC">Santa Catarina</option>
	                                <option value="SP">São Paulo</option>
	                                <option value="SE">Sergipe</option>
	                                <option value="TO">Tocantins</option>
                                  </select>
                                    <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorUfOrigem">
                                            * Campo Inválido
                                        </span>
                                    </label>
                                </div>
                              </li>
                                
                             <!--Cidade Final-->
                             <li class="form-line jf-required" data-type="control_phone" id="idCidadeFinal">
                                <label class="form-label form-label-left" id="labelCidadeFinal" for="inputCidadeFinal">
                                  Cidade de Origem
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidCidadeFinal" class="form-input jf-required" data-layout="half">
                                  <span class="form-sub-label-container " style="vertical-align:top">
                                    <asp:TextBox runat="server" id="inputCidadeFinal"  name="CidadeFinal" class="classCidadeFinal form-textbox validate[required, Fill Mask]" OnKeyUp="ValueOnKeyPress()" style="width:310px" data-masked="true" value="" minLength="2" maxlenght="40" placeholder="Ex.: São Paulo" data-component="CidadeFinal" aria-labelledby="labelCidadeFinal" required="" />
                                    <label class="form-sub-label" for="inputCidadeFinal" id="sublabelCidadeFinal" style="min-height:13px" aria-hidden="false">
                                    <span class="spanError form-required" id="spanErrorCidadeFinal">
                                            * Campo Inválido
                                        </span>
                                    </label>
                                  </span>
                                </div>
                              </li>

                            <!--UF Final-->
                             <li class="form-line jf-required" data-type="control_dropdown" id="idUfFinal">
                                <label class="form-label form-label-left" id="labelUfFinal" for="selectUfOrigem">
                                  Estado de Origem
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidUfFinal" class="form-input jf-required" data-layout="half">
                                  <select runat="server" class="classUfFinal form-dropdown validate[required]" id="selectUfFinal" name="UfFinal" style="width:310px" data-component="dropdown" required="" aria-labelledby="labelUfFinal">
                                    <option>  </option>
                                    	<option value="AC">Acre</option>
	                                <option value="AL">Alagoas</option>
	                                <option value="AP">Amapá</option>
	                                <option value="AM">Amazonas</option>
	                                <option value="BA">Bahia</option>
	                                <option value="CE">Ceará</option>
	                                <option value="DF">Distrito Federal</option>
	                                <option value="ES">Espírito Santo</option>
	                                <option value="GO">Goiás</option>
	                                <option value="MA">Maranhão</option>
	                                <option value="MT">Mato Grosso</option>
	                                <option value="MS">Mato Grosso do Sul</option>
	                                <option value="MG">Minas Gerais</option>
	                                <option value="PA">Pará</option>
	                                <option value="PB">Paraíba</option>
	                                <option value="PR">Paraná</option>
	                                <option value="PE">Pernambuco</option>
	                                <option value="PI">Piauí</option>
	                                <option value="RJ">Rio de Janeiro</option>
	                                <option value="RN">Rio Grande do Norte</option>
	                                <option value="RS">Rio Grande do Sul</option>
	                                <option value="RO">Rondônia</option>
	                                <option value="RR">Roraima</option>
	                                <option value="SC">Santa Catarina</option>
	                                <option value="SP">São Paulo</option>
	                                <option value="SE">Sergipe</option>
	                                <option value="TO">Tocantins</option>
                                  </select>
                                    <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorUfFinal">
                                            * Selecione
                                        </span>
                                    </label>
                                </div>
                              </li>

                                <!--Motoristas-->
                                 <li class="form-line jf-required" data-type="control_dropdown" id="idMotorista">
                                <label class="form-label form-label-left" id="labelMotorista" for="selectMotorista">
                                  Motorista
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidMotorista" class="form-input jf-required" data-layout="half">
                                  <select runat="server" class="classMotorista form-dropdown validate[required]" id="selectMotorista" name="Motorista" style="width:310px" data-component="dropdown" required="" aria-labelledby="labelMotoristal">     
                                       <option></option>      
                                  </select>
                                    <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorMotorista">
                                            * Selecione
                                        </span>
                                    </label>
                                </div>
                              </li>


                                <!--Passageiros-->
                               <li class="form-line jf-required" data-type="control_dropdown" id="idPassageiro">
                                   <label class="form-label form-label-left" id="labelPassageiro" for="selectPassageiro">
                                  Passageiro
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>                              
                                    <div id="cidPassageiro" class="form-input jf-required" data-layout="half">
                                        <select id="selectPassageiro" runat="server" class="classPassageiro form-dropdown validate[required]" style="width:310px" data-component="dropdown" required="" aria-labelledby="labelPassageiro">
                                            <option></option>
                                        </select>
                                        <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorPassageiro">
                                            * Selecione
                                        </span>
                                    </label>
                                    </div>
                               </li>

                                <!--Botões-->
                              <li class="form-line" data-type="control_button" id="idBtnCadastro">
                                <div id="cidBtnCadastro" class="form-input-wide" data-layout="full">
                                  <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
                                    <asp:Button Text="Cadastrar" id="BtnCadastro" runat="server" OnClick="BtnCadastro_Click" class="btnCadastro form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">     
                                     </asp:Button>
                                  </div>
                                  <div class="form-submit-clear-wrapper">
                                    <button id="inputClear" type="reset" class="form-submit-reset jf-form-buttons" OnClick="clearInput()" data-component="button">
                                    Limpar Tudo
                                    </button>
                                  </div>
                                </div>
                              </li>
                            </ul>
                          </div>
        </div>
        <script>
            

            $(document).ready(function () {
                $('.classValor').mask('R$###,##');
                $('.btnCadastro').hide();
            });

            $(document).on('change', function () {
                //OriginUF
                var ufOrigem = $('.classUfOrigem').val();
                if (ufOrigem === '')
                    $('#spanErrorUfOrigem').show();

                if (ufOrigem !== '')
                    $('#spanErrorUfOrigem').hide();
                //OriginUF End


                //FinalUF
                var ufFinal = $('.classUfFinal').val();
                if (ufFinal === '')
                    $('#spanErrorUfFinal').show();

                if (ufFinal !== '')
                    $('#spanErrorUfFinal').hide();
                //FinalUF End

                //FinalUF
                var ufFinal = $('.classUfFinal').val();
                if (ufFinal === '')
                    $('#spanErrorUfFinal').show();

                if (ufFinal !== '')
                    $('#spanErrorUfFinal').hide();
                //FinalUF End

                //Motorista
                var motorista = $('.classMotorista').val();
                if (motorista !== '')
                {
                    $('#spanErrorMotorista').hide();
                }
                if (motorista === '')
                {
                    $('#spanErrorMotorista').show();
                }
                //Motorista End

                //Passageiros
                var passageiro = $('.classPassageiro').val();
                if (passageiro !== '') {
                    $('#spanErrorPassageiro').hide();
                }
                if (passageiro === '') {
                    $('#spanErrorPassageiro').show();
                }
                
                //Passageiros 

                //Disable/Enabled Button
                if ($('.spanError:visible').length > 0) {
                    $('.btnCadastro').hide();
                    //$('.btnCadastro').attr('disabled');
                }
                if ($('.spanError:visible').length === 0) {
                    $('.btnCadastro').show();
                    //$('.btnCadastro').removeAttr('disabled');
                }
            });

            function ValueOnKeyPress()
            {   
                //Value
                var strValorCorrida = $('.classValor').val();
                var rValorCorrida = strValorCorrida.replace('R', '');
                var sifraoValorCorrida = rValorCorrida.replace('$', '');
                var valorCorrida = sifraoValorCorrida.replace(',', '');

                if (valorCorrida.length === 0 || valorCorrida === "")
                    $('#spanErrorValor').show();

                if (valorCorrida.length >= 1)
                    $('#spanErrorValor').hide();
                //Value End

                //Starting City
                var cidadeOrigem = $('.classCidadeOrigem').val().trim();

                if (cidadeOrigem.length === 0 || cidadeOrigem === "")
                    $('#spanErrorCidadeOrigem').show();

                if (cidadeOrigem.length > 1)
                    $('#spanErrorCidadeOrigem').hide();
                //Starting City End

                ///Final City
                var cidadeFinal = $('.classCidadeFinal').val().trim();

                if (cidadeFinal.length === 0 || cidadeOrigem === "")
                    $('#spanErrorCidadeFinal').show();

                if (cidadeFinal.length > 1)
                    $('#spanErrorCidadeFinal').hide();
                //Final City End
                //Disable/Enabled Button
                if ($('.spanError:visible').length > 0) {
                    $('.btnCadastro').hide();
                    //$('.btnCadastro').attr('disabled');
                }
                if ($('.spanError:visible').length === 0) {
                    $('.btnCadastro').show();
                    //$('.btnCadastro').removeAttr('disabled');
                }
            }       

            function clearInput() {
                $('.classValor').val('');
                $('#spanErroValor').show();

                $('.classCidadeOrigem').val('');
                $('#spanErrorCidadeOrigem').show();
                $('.classCidadeFinal').val('');
                $('#spanErrorCidadeFinal').show();

                $('.classUfOrigem').val('');
                $('#spanErrorUfOrigem').show();
                $('.classUfFinal').val('');
                $('#spanErrorUfFinal').show();
            }           
        </script>
    </body>
    </html>
</asp:Content>

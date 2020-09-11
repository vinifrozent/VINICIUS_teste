<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsuariosCadastro.aspx.cs" Inherits="CorridasCompartilhadas.Views.UsuariosCadastro.UsuariosCadastro" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <html xmlns="http://www.w3.org/1999/xhtml">
    <body>
        <div id="form1" name="form1" runat="server">
                       

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
                                              Usuarios
                                            </h1>
                                            <div id="subHeaderTitle" class="form-subHeader">
                                              Cadastro de Usuarios
                                            </div>
                                          </div>
                                        </div>
                                      </li>

                                <!--Nome-->
                              <li class="form-line jf-required" data-type="control_fullname" id="idName">
                                <label class="form-label form-label-left" id="labelName" for="FirstName">
                                  Nome Completo
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidName" class="form-input jf-required" data-layout="full">
                                  <div data-wrapper-react="true">
                                    <span class="form-sub-label-container " style="vertical-align:top" data-input-type="first">
                                      <asp:TextBox runat="server" id="inputFirstName" name="FirstName" class="classFirstName form-textbox validate[required]" OnKeyUp="ValueOnKeyPress()"  size="10" value="" minLength="2" maxLength="20" data-component="first" aria-labelledby="labelName sublabelFirstName" required="required"/>
                                      <label class="form-sub-label" for="FirstName" id="sublabelFirstName" style="min-height:13px" aria-hidden="false"> Nome
                                      <span class="spanError form-required" id="spanErrorFirstName">
                                          * Campo Inválido
                                        </span>
                                      </label>
                                    </span>
                                    <span class="form-sub-label-container " style="vertical-align:top" data-input-type="last">
                                      <asp:TextBox runat="server" id="inputLastName" name="LastName" class="classLastName form-textbox validate[required]" OnKeyUp="ValueOnKeyPress()"  size="15" value="" maxLength="20" data-component="last" aria-labelledby="labelName sublabelLastName" required=""/>
                                      <label class="form-sub-label" for="LastName" id="sublabelLastName" style="min-height:13px" aria-hidden="false"> Sobrenome 
                                      <span class="spanError form-required" id="spanErrorLastName">
                                            * Campo Inválido
                                        </span>
                                      </label>                                        
                                    </span>
                                  </div>
                                </div>
                              </li>
                                <!--Data Nascimento-->
                              <li class="form-line jf-required" data-type="control_birthdate" id="idDataNascimento">
                                <label class="form-label form-label-left" id="labelDataNascimento" for="inputDataNascimento">
                                  Data de Nascimento
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidDataNascimento" class="form-input jf-required" data-layout="full">
                                  <div data-wrapper-react="true">
                                    <span class="form-sub-label-container" style="vertical-align:top">
                                      <select runat="server" name="month" id="inputMonth" class="classMonth form-dropdown validate[required]" data-component="birthdate-month" required="" aria-labelledby="labelDataNascimento sublabelMonth">
                                        <option>  </option>
                                        <option value="01"> January </option>
                                        <option value="02"> February </option>
                                        <option value="03"> March </option>
                                        <option value="04"> April </option>
                                        <option value="05"> May </option>
                                        <option value="06"> June </option>
                                        <option value="07"> July </option>
                                        <option value="08"> August </option>
                                        <option value="09"> September </option>
                                        <option value="10"> October </option>
                                        <option value="11"> November </option>
                                        <option value="12"> December </option>
                                      </select>
                                      <label class="form-sub-label" for="inputMonth" id="sublabelMonth" style="min-height:13px" aria-hidden="false"> Mês 
                                      <span class="spanError form-required" id="spanErrorMonth">
                                            * Selecione
                                        </span>
                                      </label>
                                    </span>
                                    <span class="form-sub-label-container " style="vertical-align:top">
                                      <select runat="server" name="day" id="inputDay" class="classDay form-dropdown validate[required]" required="" data-component="birthdate-day" aria-labelledby="labelDataNascimento sublabelDay">
                                        <option>  </option>
                                        <option value="01"> 1 </option>
                                        <option value="02"> 2 </option>
                                        <option value="03"> 3 </option>
                                        <option value="04"> 4 </option>
                                        <option value="05"> 5 </option>
                                        <option value="06"> 6 </option>
                                        <option value="07"> 7 </option>
                                        <option value="08"> 8 </option>
                                        <option value="09"> 9 </option>
                                        <option value="10"> 10 </option>
                                        <option value="11"> 11 </option>
                                        <option value="12"> 12 </option>
                                        <option value="13"> 13 </option>
                                        <option value="14"> 14 </option>
                                        <option value="15"> 15 </option>
                                        <option value="16"> 16 </option>
                                        <option value="17"> 17 </option>
                                        <option value="18"> 18 </option>
                                        <option value="19"> 19 </option>
                                        <option value="20"> 20 </option>
                                        <option value="21"> 21 </option>
                                        <option value="22"> 22 </option>
                                        <option value="23"> 23 </option>
                                        <option value="24"> 24 </option>
                                        <option value="25"> 25 </option>
                                        <option value="26"> 26 </option>
                                        <option value="27"> 27 </option>
                                        <option value="28"> 28 </option>
                                        <option value="29"> 29 </option>
                                        <option value="30"> 30 </option>
                                        <option value="31"> 31 </option>
                                      </select>
                                      <label class="form-sub-label" for="inputDay" id="sublabelDay" style="min-height:13px" aria-hidden="false"> Dia 
                                      <span class="spanError form-required" id="spanErrorDay">
                                            * Selecione
                                        </span>
                                      </label>
                                    </span>
                                    <span class="form-sub-label-container " style="vertical-align:top">
                                      <select runat="server" name="year" id="inputYear" class="classYear form-dropdown validate[required]" required="" data-component="birthdate-year" aria-labelledby="labelDataNascimento sublabelYear">
                                        <option>  </option>
                                          <option value="2008"> 2008 </option>
                                          <option value="2007"> 2007 </option>
                                          <option value="2006"> 2006 </option>
                                          <option value="2005"> 2005 </option>
                                          <option value="2004"> 2004 </option>
                                        <option value="2003"> 2003 </option>
                                        <option value="2002"> 2002 </option>
                                        <option value="2001"> 2001 </option>
                                        <option value="2000"> 2000 </option>
                                        <option value="1999"> 1999 </option>
                                        <option value="1998"> 1998 </option>
                                        <option value="1997"> 1997 </option>
                                        <option value="1996"> 1996 </option>
                                        <option value="1995"> 1995 </option>
                                        <option value="1994"> 1994 </option>
                                        <option value="1993"> 1993 </option>
                                        <option value="1992"> 1992 </option>
                                        <option value="1991"> 1991 </option>
                                        <option value="1990"> 1990 </option>
                                        <option value="1989"> 1989 </option>
                                        <option value="1988"> 1988 </option>
                                        <option value="1987"> 1987 </option>
                                        <option value="1986"> 1986 </option>
                                        <option value="1985"> 1985 </option>
                                        <option value="1984"> 1984 </option>
                                        <option value="1983"> 1983 </option>
                                        <option value="1982"> 1982 </option>
                                        <option value="1981"> 1981 </option>
                                        <option value="1980"> 1980 </option>
                                        <option value="1979"> 1979 </option>
                                        <option value="1978"> 1978 </option>
                                        <option value="1977"> 1977 </option>
                                        <option value="1976"> 1976 </option>
                                        <option value="1975"> 1975 </option>
                                        <option value="1974"> 1974 </option>
                                        <option value="1973"> 1973 </option>
                                        <option value="1972"> 1972 </option>
                                        <option value="1971"> 1971 </option>
                                        <option value="1970"> 1970 </option>
                                        <option value="1969"> 1969 </option>
                                        <option value="1968"> 1968 </option>
                                        <option value="1967"> 1967 </option>
                                        <option value="1966"> 1966 </option>
                                        <option value="1965"> 1965 </option>
                                        <option value="1964"> 1964 </option>
                                        <option value="1963"> 1963 </option>
                                        <option value="1962"> 1962 </option>
                                        <option value="1961"> 1961 </option>
                                        <option value="1960"> 1960 </option>
                                        <option value="1959"> 1959 </option>
                                        <option value="1958"> 1958 </option>
                                        <option value="1957"> 1957 </option>
                                        <option value="1956"> 1956 </option>
                                        <option value="1955"> 1955 </option>
                                        <option value="1954"> 1954 </option>
                                        <option value="1953"> 1953 </option>
                                        <option value="1952"> 1952 </option>
                                        <option value="1951"> 1951 </option>
                                        <option value="1950"> 1950 </option>
                                        <option value="1949"> 1949 </option>
                                        <option value="1948"> 1948 </option>
                                        <option value="1947"> 1947 </option>
                                        <option value="1946"> 1946 </option>
                                        <option value="1945"> 1945 </option>
                                        <option value="1944"> 1944 </option>
                                        <option value="1943"> 1943 </option>
                                        <option value="1942"> 1942 </option>
                                        <option value="1941"> 1941 </option>
                                        <option value="1940"> 1940 </option>
                                        <option value="1939"> 1939 </option>
                                        <option value="1938"> 1938 </option>
                                        <option value="1937"> 1937 </option>
                                        <option value="1936"> 1936 </option>
                                        <option value="1935"> 1935 </option>
                                        <option value="1934"> 1934 </option>
                                        <option value="1933"> 1933 </option>
                                        <option value="1932"> 1932 </option>
                                        <option value="1931"> 1931 </option>
                                        <option value="1930"> 1930 </option>
                                        <option value="1929"> 1929 </option>
                                        <option value="1928"> 1928 </option>
                                        <option value="1927"> 1927 </option>
                                        <option value="1926"> 1926 </option>
                                        <option value="1925"> 1925 </option>
                                        <option value="1924"> 1924 </option>
                                        <option value="1923"> 1923 </option>
                                        <option value="1922"> 1922 </option>
                                        <option value="1921"> 1921 </option>
                                        <option value="1920"> 1920 </option>
                                      </select>
                                      <label class="form-sub-label" for="inputYear" id="sublabelYear" style="min-height:13px" aria-hidden="false"> Ano 
                                      <span class="spanError form-required" id="spanErrorYear">
                                            * Selecione
                                        </span>
                                                                            
                                      <span class="spanError form-required" id="spanErrorYearDriver">
                                            * Ano de nascimento para motorista inválido
                                        </span>
                                          </label>
                                    </span>
                                  </div>
                                </div>
                              </li>

                                <!--Sexo-->
                              <li class="form-line jf-required" data-type="control_dropdown" id="idSexo">
                                <label class="form-label form-label-left" id="labelSexo" for="selectSexo">
                                  Sexo
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidSexo" class="form-input jf-required" data-layout="half">
                                  <select runat="server" class="classSex form-dropdown validate[required]" id="selectSexo" name="sexo" style="width:310px" data-component="dropdown" required="" aria-labelledby="labelSexo">
                                    <option>  </option>
                                    <option value="Masculino"> Masculino </option>
                                    <option value="Feminino"> Feminino </option>
                                    <option value="Outro"> N/A </option>
                                  </select>
                                    <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorSex">
                                            * Selecione
                                        </span>
                                    </label>
                                </div>
                              </li>

                                <!--Contato-->
                              <li class="form-line jf-required" data-type="control_phone" id="idPhone">
                                <label class="form-label form-label-left" id="labelPhone" for="inputPhone">
                                  Telefone Celular
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidPhone" class="form-input jf-required" data-layout="half">
                                  <span class="form-sub-label-container " style="vertical-align:top">
                                    <asp:TextBox runat="server" type="tel" id="inputPhone" name="Phone" class="classPhone form-textbox validate[required, Fill Mask]" OnKeyUp="ValueOnKeyPress()"  style="width:310px" data-masked="true" value="" minlenght="14" maxlenght="14" placeholder="(00) 00000-0000" data-component="phone" aria-labelledby="labelPhone" required="" />
                                    <label class="form-sub-label" for="inputPhone" id="sublabelPhone" style="min-height:13px" aria-hidden="false">
                                    <span class="spanError form-required" id="spanErrorPhone">
                                            * Campo Inválido
                                        </span>
                                    </label>
                                  </span>
                                </div>
                              </li>

                                <!--CPF-->
                              <li class="form-line jf-required" data-type="control_number" id="idCPF">
                                <label class="form-label form-label-left form-label-auto" id="labelCPF" for="inputCPF">
                                  CPF
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidCPF" class="form-input jf-required" data-layout="half">                                    
                                  <asp:TextBox runat="server" id="inputCPF" name="CPF" minlenght="14" maxlenght="14"  class="classCPF form-number-input form-textbox validate[required]" OnKeyUp="ValueOnKeyPress()"  style="width:310px" value="" placeholder="000.000.000-00"  aria-labelledby="labelCPF" required="" step="any" />
                                    <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorCPF" visible="false">
                                            * Campo Inválido
                                        </span>
                                    </label>
                                </div>
                              </li>

                                <!--Tipo User-->
                              <li class="form-line jf-required" data-type="control_dropdown" id="idTipoUsuario">
                                <label class="form-label form-label-left" id="labelTipoUsuario" for="selectTipoUsuario">
                                  Tipo de Usuario
                                  <span class="form-required">
                                    *
                                  </span>
                                </label>
                                <div id="cidTipoUsuario" class="form-input jf-required" data-layout="half">
                                  <select runat="server" class="classUserType form-dropdown validate[required]" id="selectTipoUsuario" name="sexo" style="width:310px" data-component="dropdown" required="" aria-labelledby="labelTipoUsuario">
                                    <option>  </option>
                                    <option value="Motorista"> Motorista </option>
                                    <option value="Passageiro"> Passageiro </option>                                    
                                  </select>
                                    <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorUserType">
                                            * Selecione
                                        </span>
                                    </label>
                                </div>
                              </li>

                                <!--Motoristas-->     
                                <li class="classTxtMotoristas" visible="false" style="display: none">
                                   <ul>
                                  <li class="form-line jf-required" data-type="control_textbox" id="idPlaca">
                                    <label class="form-label form-label-left form-label-auto" id="labelPlaca" for="inputPlaca">
                                      Placa do Carro
                                      <span class="form-required">
                                        *
                                      </span>
                                    </label>
                                    <div id="cidPlaca" class="form-input jf-required" data-layout="half">
                                      <asp:TextBox runat="server"  id="inputPlaca" name="Placa"  class="classPlaca form-textbox validate[required, Fill Mask]" OnKeyUp="ValueOnKeyPress()"  style="width:310px" size="310" value="" minlength="7"  maxLength="9" placeholder="Ex.: ABC-1D23 ou ABC-123" data-component="textbox" aria-labelledby="labelPlaca" />
                                        <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorPlaca">
                                            * Campo Inválido
                                        </span>
                                    </label>
                                    </div>
                                  </li>

                                
                                  <li class="form-line jf-required" data-type="control_textbox" id="idModelo">
                                    <label class="form-label form-label-left form-label-auto" id="labelModelo" for="inputModelo">
                                      Modelo do Carro
                                      <span class="form-required">
                                        *
                                      </span>
                                    </label>
                                    <div id="cidModelo" class="form-input jf-required" data-layout="half">
                                      <asp:TextBox runat="server" id="inputModelo" name="Modelo" class="classModelo form-textbox validate[required]" OnKeyUp="ValueOnKeyPress()"  OnKeyDown="ValueOnKeyPress()" style="width:310px" size="310" value="" minlength="2" maxLength="40" placeholder="Ex.: Fiat Tempra" data-component="textbox" aria-labelledby="labelModelo" />
                                       <label class="form-sub-label">
                                        <span class="spanError form-required" id="spanErrorModelo">
                                            * Campo Inválido
                                        </span>
                                           </label>
                                    </div>
                                  </li>
                                   </ul>
                                </li>
                                <!--Botões-->
                              <li class="form-line" data-type="control_button" id="idBtnCadastro">
                                <div id="cidBtnCadastro" class="form-input-wide" data-layout="full">
                                  <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
                                    <asp:Button runat="server" id="BtnCadastro" Text="Cadastrar" class="btnCadastro form-submit-button submit-button jf-form-buttons jsTest-submitField" OnClick="BtnCadastro_Click" data-component="button" data-content="">                                      
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
            $('.classPhone').mask('(00)00000-0000');
            $('.classCPF').mask('000.000.000-AA');
            $('.classPlaca').mask('SSS-0A00');  
            $('.btnCadastro').hide();  
            $('#spanErrorYearDriver').hide();


            $(document).on('change', function () {
                //DateMDY
                //Month
                var month = $('.classMonth').val();
                if (month === "")
                    $('#spanErrorMonth').show();

                if (month !== "")
                    $('#spanErrorMonth').hide();

                //Day
                var day = $('.classDay').val();
                if (day === "")
                    $('#spanErrorDay').show();

                if (day !== "")
                    $('#spanErrorDay').hide();

                //Year
                var Year = $('.classYear').val();
                if (Year === "")
                    $('#spanErrorYear').show();

                if (Year !== "")
                    $('#spanErrorYear').hide();
               
                var yearInt = Number(Year);
                var userType = $('.classUserType').val();

                if (userType === 'Motorista' && yearInt > 2002)
                    $('#spanErrorYearDriver').show();
                else
                    $('#spanErrorYearDriver').hide();


                //DateMDY End

                //UserType
                if (userType === '')
                    $('#spanErrorUserType').show();

                if (userType !== '')
                    $('#spanErrorUserType').hide();

                if (userType !== 'Motorista')
                {
                    $('.classTxtMotoristas').hide();

                    $('.classModelo').removeAttr("required", "");
                    $('.classPlaca').removeAttr("required", "");
                }

                if (userType === 'Motorista')
                {
                    $('.classTxtMotoristas').show();

                    $('.classModelo').attr("required", "");
                    $('.classPlaca').attr("required", "");
                }
                //UserType end

                //Sex
                var sex = $('.classSex').val();
                if (sex === '')
                    $('#spanErrorSex').show();

                if (sex !== '')
                    $('#spanErrorSex').hide();
                //Sex End           

                //Disable/Enabled Button
                if ($('.spanError:visible').length > 0) {
                    $('.btnCadastro').hide();
                }
                if ($('.spanError:visible').length === 0) {
                    $('.btnCadastro').show();
                }

            });

            function ValueOnKeyPress()
            {   
                //FullName
                var firstName = $('.classFirstName').val().trim();
                var lastName = $('.classLastName').val().trim();

                if (firstName.length === 0 || firstName === "")
                    $('#spanErrorFirstName').show();

                if (firstName.trim().length > 1)
                    $('#spanErrorFirstName').hide();

                if (lastName.length === 0 || lastName === "")
                    $('#spanErrorLastName').show();

                if (lastName.trim().length > 1)
                    $('#spanErrorLastName').hide();
                //FullName End

                //CPF
                var strCPF = $('.classCPF').val();
                var cpfDot = strCPF.replace(/\./g, '');
                var cpf = cpfDot.replace(/-/, "");

                if (cpf.length !== 11 ||
                    cpf === "00000000000" ||
                    cpf === "11111111111" ||
                    cpf === "22222222222" ||
                    cpf === "33333333333" ||
                    cpf === "44444444444" ||
                    cpf === "55555555555" ||
                    cpf === "66666666666" ||
                    cpf === "77777777777" ||
                    cpf === "88888888888" ||
                    cpf === "99999999999") {
                    $('#spanErrorCPF').show();
                }
                else
                {
                    $('#spanErrorCPF').hide();
                }
                //CPF End

                //PhoneNumber
                var strPhone = $('.classPhone').val();
                var phoneDot = strPhone.replace(/\./g, '');
                var phoneParenteses = phoneDot.replace(/-/, "");
                var phone = phoneParenteses.replace("(", "").replace(")","");

                if (phone.length !== 11 ||
                    cpf === "00000000000" ||
                    cpf === "11111111111" ||
                    cpf === "22222222222" ||
                    cpf === "33333333333" ||
                    cpf === "44444444444" ||
                    cpf === "55555555555" ||
                    cpf === "66666666666" ||
                    cpf === "77777777777" ||
                    cpf === "88888888888" ||
                    cpf === "99999999999") {
                    $('#spanErrorPhone').show();
                }
                else {
                    $('#spanErrorPhone').hide();
                }
                //PhoneNumber End

                //Motoristas
                var placa = $('.classPlaca').val();              

                if (placa.length < 7 )
                    $('#spanErrorPlaca').show();

                if (placa.length === 8 || placa.length === 7)
                    $('#spanErrorPlaca').hide();    

                var modelo = $('.classModelo').val().trim();

                if (modelo.length === 0 || modelo === "")
                    $('#spanErrorModelo').show();

                if (modelo.trim().length > 1)
                    $('#spanErrorModelo').hide();    

                //Motoristas End

                //Disable/Enabled Button
                if ($('.spanError:visible').length > 0) {
                    $('.btnCadastro').hide();
                }
                if ($('.spanError:visible').length === 0) {
                    $('.btnCadastro').show();
                }

            }       

            function clearInput() {
                $('.spanError').show();
                $('#spanErrorYearDriver').hide();
                $(".classFirstName").val('');
                
                $(".classLastName").val('');                

                $(".classMonth").val('');
                
                $(".classDay").val('');
                
                $(".classYear").val('');
                
                $("classUserType").val('');
                
                $(".classSex").val('');                

                $('.classTxtMotoristas').hide();

                $(".classCPF").val('');
                
                $(".classPhone").val('');
                
                $(".classPlaca").val('');
                
                $(".classModelo").val('');                
            }
           
        </script>
    </body>
    </html>
</asp:Content>

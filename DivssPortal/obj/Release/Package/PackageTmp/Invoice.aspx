<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="DivssPortal.Invoice" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Divss Invoice</title>
    <meta name="description" content="Divss Invoices">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="vendors/jqvmap/dist/jqvmap.min.css">

    <link rel="stylesheet" href="assets/css/invoicestyle.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

</head>

<body>
<form id="form1" runat="server">

    <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"></a>
          
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="Dashboard.aspx"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                   
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Transaction Manager</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href="ui-buttons.html">Services</a></li>
                            <li><i class="fa fa-id-badge"></i><a href="Invoice.aspx">Invoices</a></li>
                            <li><i class="fa fa-bars"></i><a href="ui-tabs.html">Repairs</a></li>
                            
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Inventory Manager</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="tables-basic.html">View Stocks</a></li>
                            <li><i class="fa fa-table"></i><a href="tables-data.html">View Stock Returns</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Customer Manager</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-th"></i><a href="forms-basic.html">View Customers</a></li>
                            <li><i class="menu-icon fa fa-th"></i><a href="forms-advanced.html">Send Notifications</a></li>
                        </ul>
                    </li>

                    

                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Employee Manager</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-fort-awesome"></i><a href="font-fontawesome.html">Salary Management</a></li>
                            <li><i class="menu-icon ti-themify-logo"></i><a href="font-themify.html">View Man hours</a></li>
                        </ul>
                    </li>
                   
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-glass"></i>Authentications</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="Loging.aspx">Login</a></li>
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="Signup.aspx">Register</a></li>
                            <li><i class="menu-icon fa fa-paper-plane"></i><a href="ForgetPass.aspx">Forget Pass</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <div class="search-form">
                                
                                <asp:TextBox ID="txtInvNo" style="width:80%" class="form-control mr-sm-2" placeholder="Search ..." aria-label="Search" runat="server"  ></asp:TextBox>
                               <asp:Button ID="txtSearch" class="btn btn-primary" runat="server" Text="Search" onclick="txtSearch_Click" />
                                <%--<input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">--%>
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                                 
                            </div>
                            
                        </div>

                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.png" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa-user"></i> My Profile</a>

                            <a class="nav-link" href="#"><i class="fa fa-cog"></i> Settings</a>

                            <a class="nav-link" href="#"><i class="fa fa-power-off"></i> Logout</a>
                        </div>
                    </div>

                </div>
            </div>

        </header><!-- /header -->
        <!-- Header-->

        

        <div class="content mt-3">

            <div >
                <div class="row invoice-header px-3 py-2">
                  <div class="col-4">
                    <p>Pitstop</p>
                    <h1>INVOICE</h1>
                  </div>
                  <div class="col-4 text-right">
                    <p>(011)-123-1243</p>
                    <p>email@adress.com</p>
                    <p>personal-website.com</p>
                  </div>
                  <div class="col-4 text-right">
                    <p>Street Adress</p>
                    <p>City, State Adress, ZIP</p>
                    <p>VAT ID / PID</p>
                  </div>
                </div>
              
                <div class="invoice-content row px-5 pt-5">
                  <div class="col-3">
                    <h5 class="almost-gray mb-3">Invoiced to:</h5>
                    <p class="gray-ish">
                        <asp:Label ID="lblClientName" runat="server" Text="........."></asp:Label>
                    </p>
                    <p class="gray-ish">
                        <asp:Label ID="lblClientAddress" runat="server" Text="........."></asp:Label>
                    </p>
                    <p class="gray-ish">VAT ID: ..........</p>
                  </div>
                  <div class="col-3">
                    <h5 class="almost-gray">Invoice number:</h5>
                    <p class="gray-ish">
                        <asp:Label ID="lblinvoiceNum" runat="server" Text="........."></asp:Label>
                    </p>
              
                    <h5 class="almost-gray">Date of Issue:</h5>
                    <p class="gray-ish">
                        <asp:Label ID="lblInvdate" runat="server" Text="........."></asp:Label>
                    </p>
              
                  </div>
                  <div class="col-6 text-right total-field">
                    <h4 class="almost-gray">Invoice Total</h4>
                    <h1 class="gray-ish"><span class="curency">Rs</span> <asp:Label ID="lblInvoiceAmt" runat="server" Text="........."></asp:Label></h1>
                    
                  </div>
                </div>
              
                <div class="row mt-5">
                  <div class="col-10 offset-1 invoice-table pt-1">
                   <%-- <table class="table table-hover">
                          <thead class="thead splitForPrint">
                            <tr>
                              <th scope="col gray-ish">NO.</th>
                              <th scope="col gray-ish">Item</th>
                              <th scope="col gray-ish">Qty.</th>
                              <th scope="col gray-ish">U. Price</th>
                              <th scope="col gray-ish">VAT %</th>
                              <th scope="col gray-ish">Discount</th>
                              <th class="text-right" scope="col gray-ish">Amount</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td class="item">Item 1</td>
                              <td>1</td>
                              <td>25 <span class="currency">&euro;</span></td>
                              <td>5  %</td>
                              <td>5  %</td>
                              <td class="text-right">28,75 <span class="currency">&euro;</span></td>
                            </tr>
                            <tr>
                              <th scope="row">2</th>
                              <td class="item">Item 2</td>
                              <td>1</td>
                              <td>25 <span class="currency">&euro;</span> </td>
                              <td></td>
                              <td>5  %</td>
                              <td class="text-right">28,75 <span class="currency">&euro;</span> </td>
                            </tr>
                          </tbody>
                        </table>--%>
                      

                      <asp:GridView ID="InvDetailsGrid" runat="server" CssClass="table table-hover"
                         AutoGenerateColumns="False"    DataKeyNames="AUTO_ID">
                        <PagerStyle HorizontalAlign="Center" Font-Size="Large" />
                        <AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>
                        <Columns>
                            <asp:TemplateField  HeaderText="Number" ItemStyle-CssClass="left-align">
                                <ItemTemplate>
                                    <asp:Label ID="lblGridautoID" ItemStyle-CssClass="left-align" runat="server" Text='<%# Eval("AUTO_ID") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Items">
                                <ItemTemplate>
                                    <asp:Label ID="lblGridItems" ItemStyle-CssClass="left-align" runat="server" Text='<%# Eval("ITEMS_FOR_MAINTAINANCE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Item Description">
                                <ItemTemplate>
                                    <asp:Label ID="lblGridItemDesc" ItemStyle-HorizontalAlign="Left" runat="server" Text='<%# Eval("ITEM_DESC") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="lblGridPrice" ItemStyle-HorizontalAlign="Left" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Qty">
                                <ItemTemplate>
                                    <asp:Label ID="lblGridQty" ItemStyle-HorizontalAlign="Left" runat="server" Text='<%# Eval("QTY") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Sub Total">
                                <ItemTemplate>
                                    <asp:Label ID="lblGridSubTot" ItemStyle-HorizontalAlign="Left" runat="server" Text='<%# Eval("SUB_TOT") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                  </div>
                </div>
              <div class="row invoice_details">
                 <!-- invoiced to details -->
                 <div class="col-4 offset-1 pt-3">
                   <h4 class="gray-ish">Invoice Summary & Notes</h4>
                   <p class="pt-3 almost-gray">This invoice is a DIVSS computer system generated copy and need no signature. Please contact your service company for any clarifications</p>
                 </div>
                 <!-- Invoice assets and total -->
                      <div class="offset-1 col-5 mb-3 pr-4 sub-table">
                        <table class="table table-borderless">
                          <tbody>
                            <tr>
                              <th scope="row gray-ish">Subtotal</th>
                              <td class="text-right"><span class="currency ">Rs</span> 00.00 </td>
                            </tr>
                            <tr>
                              <th scope="row gray-ish">VAT</th>
                              <td class="text-right"><span class="currency ">Rs</span> 00.00 </td>
                            </tr>
                            <tr>
                              <th scope="row gray-ish">Taxes*</th>
                              <td class="text-right"><span class="currency ">Rs</span> 00.00 </td>
                            </tr>
                            <tr>
                              <th scope="row gray-ish">Discounts</th>
                              <td class="text-right"><span class="currency ">Rs</span> 00.00 </td>
                            </tr>
                            <tr class="last-row">
                                <th scope="row"><h4>Total</h4></th>
                                <td class="text-right"><span class="currency ">Rs</span> <asp:Label ID="lblInvTot" runat="server" Text="........."></asp:Label></td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                 </div>
                <p class="text-center pb-3"><em> Taxes will be calculated in Rs regarding transport and other taxable services.</em></p>
              </div>


        </div> <!-- .content -->
    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>


    <script src="vendors/chart.js/dist/Chart.bundle.min.js"></script>
    <script src="assets/js/dashboard.js"></script>
    <script src="assets/js/widgets.js"></script>
    <script src="vendors/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script  src="assets/js/invoicescript.js"></script>
    <script>
        (function($) {
            "use strict";

            jQuery('#vmap').vectorMap({
                map: 'world_en',
                backgroundColor: null,
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#1de9b6',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: ['#1de9b6', '#03a9f5'],
                normalizeFunction: 'polynomial'
            });
        })(jQuery);
    </script>
</form>
</body>

</html>


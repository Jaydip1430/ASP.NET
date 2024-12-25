<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Feedback-View.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cplace" Runat="Server">
    <!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Feedback View</h1>
								
							</div>
						</div>
						<
							
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		
		<!-- Start Contact Form -->
		<div class="untree_co-section">
      <div class="container">

        <div class="block">
          <div class="row justify-content-center">


            <div class="col-md-8 col-lg-8 pb-4">

        <form runat="server">
            <div class="row">

                <div class="col-12">

                    <asp:Repeater ID="rptr" runat="server">
                        <HeaderTemplate>
                    <table class ="table table-bordered">
                        <thead>
                            <tr>
                                <th>feedback id</th>
                                <th>user email</th>
                                <th>description</th>
                                <th>date</th>
                                <th>name</th>
                                <th> Action </th>
                            </tr>
                        </thead>
                        <tbody>

                            </HeaderTemplate>
                        <ItemTemplate>

                            <tr>
                                <td><%# Eval("feedback_id") %></td>
                                <td><%# Eval("user_email") %></td>
                                <td><%# Eval("description") %></td>
                                <td><%# Eval("date") %></td>
                                <td><%# Eval("name") %></td>
                                 <td><a href="Feedback View.aspx?feedback_id=<%#Eval("feedback_id") %>"> Delete </a></td>
               
                            </tr>
                            </ItemTemplate>
                        <FooterTemplate>
                        </tbody>
                    </table>
                     
                            </FooterTemplate>

                         </asp:Repeater>


                </div>


            </div>
        </form>

    </div>

          </div>

        </div>

      </div>


    </div>

  <!-- End Contact Form -->
</asp:Content>


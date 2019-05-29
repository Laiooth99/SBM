<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Bokningar.aspx.cs" Inherits="SBM.Bokningar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main role="main">
          <section class=" panel important">
             <asp:GridView ID="GridView1" runat="server" RowHeaderColumn="0" 
                   HeaderStyle-BackColor="slategray" HeaderStyle-Font-Bold="true" 
                   HeaderStyle-ForeColor="Black" RowStyle-BackColor="WhiteSmoke" 
               DataSourceID="SqlDataSource1" AutoGenerateColumns="false" AllowSorting="true" Font-Size="Small"
                GridLines="Both">

                  <Columns>
                       <asp:BoundField DataField="Fname" HeaderText="Förnamn" 
                  />

                        <asp:BoundField DataField="Lname" HeaderText="Efternamn" 
                     />

                        <asp:BoundField DataField="Regnr" HeaderText="Reg.nr" 
                     />

                        <asp:BoundField DataField="Pnr" HeaderText="person.nr" 
                     />

                        <asp:BoundField DataField="Epost" HeaderText="Email" 
                     />

                        <asp:BoundField DataField="Mobilenr" HeaderText="Mobilenummer" 
                      />

                        <asp:BoundField DataField="Gatan" HeaderText="Gatanamn" 
                    />

                      <asp:BoundField DataField="Tid" HeaderText="Tid" 
                    />

                        <asp:BoundField DataField="Datum" HeaderText="Datum" 
                    />
                </Columns>
              </asp:GridView>
               
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="data source=89.221.254.34;initial catalog=MSSQL400035;persist security info=True;user id=MSSQL400035;password=MTowMTo1MQ;MultipleActiveResultSets=True;App=EntityFramework"
                   SelectCommand="SELECT [Fname],[Lname],[Regnr],[Pnr],[Epost],[Mobilenr], [Gatan], [Postnr] , [Ort], [Tid], [Datum] FROM [Boknings]"></asp:SqlDataSource>
              </section>
        </main>


</asp:Content>

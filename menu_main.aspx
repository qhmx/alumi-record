<%@ Page Title="" Language="C#" MasterPageFile="~/mv_nav.master" AutoEventWireup="true" CodeFile="menu_main.aspx.cs" Inherits="menu_main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #main_three
        {
            width:288px;
            height:430px;
            border:1px solid silver;
            float:right;
            margin-left:10px;
   
        }
        #div_userinfo{
            width:284px;
            height:150px;
            border:1px solid silver;
   
        }
        #user_top{
             background-image:url(../App_Img/bg_useInfo.png);
             width:284px;
             height:80px;
        }
        .img_head{
            width:60px;
            height:60px;
            border-radius:60px;
            position:absolute;
            left:1080px;
            top:160px;
           
        }
        .txt_Notice{margin-top:10px;}
        .btn_send{
            color:white;
            background-color:#f68628;
            font-size:15px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="main_three">
        <div id="div_userinfo">
            <div id="user_top"></div>
            <p><asp:Image ID="img_head" runat="server"   CssClass="img_head" /></p>
            <p id="name" runat="server" style="width:284px;text-align:center;position:absolute;top:220px;font-family:微软雅黑;"></p>

        </div>
        <div id="forum_send" >
            <span style="color:#ff6a00;margin:10px 0px">公告发布</span>
                    
                   <br/>  <span style="color:#443b3b;font-size:15px;margin:5px 0px 5px 10px;display:inline-block;float:left;">标题：</span> <br /> 
                    <asp:TextBox ID="txt_title" runat="server" CssClass="txt_title"></asp:TextBox>
                   <br /> <span style="color:#443b3b;font-size:15px;margin:5px 0px 0px 10px;display:inline-block;float:left;">内容：</span>
                    <asp:TextBox ID="txt_content" runat="server"  BorderStyle="NotSet"  CssClass="txt_Notice" Height="150px" >
                        
                    </asp:TextBox>
                    
                    <div class="clr"></div>
                    <asp:Button ID="btn_send" runat="server" Text="发表"  CssClass="btn_send" BorderStyle="None" OnClick="btn_send_Click" />      
        </div>
    </div>
</asp:Content>


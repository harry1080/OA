﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SatisfactionList.aspx.cs" Inherits="CallCenter_SatisfactionList" %>

<%@ Register Src="../Work/UserControl/Top.ascx" TagName="Top" TagPrefix="uc1" %>
<%@ Register Src="../Work/UserControl/ChangeHeadImg.ascx" TagName="ChangeHeadImg"
    TagPrefix="uc2" %>
<%@ Register Src="../Work/UserControl/Bottom.ascx" TagName="Bottom" TagPrefix="uc3" %>
<%@ Register src="UserRights.ascx" tagname="UserRights" tagprefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="author" content="环宇通达 +86-532-86100168">
    <meta name="description">
    <meta name="keywords">
    <link href="/Work/style/indexcss.css" rel="stylesheet" type="text/css">
    <link href="/Work/Scripts/jqueryPager/pagination.css" rel="stylesheet" type="text/css" />
    <link href="/Work/Style/pager.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/posts/style/style_6_common.css" />
    <link rel="stylesheet" type="text/css" href="/Posts/style/style_6_forum_forumdisplay.css" />
    <link rel="stylesheet" type="text/css" href="/Posts/style/style_6_widthauto.css" />
    <link rel="stylesheet" href="/Posts/style/reset.css" />
    <link rel="stylesheet" href="/Posts/style/selectForK13.css" />
    <link rel="stylesheet" href="/Posts/style/indexcss.css" />
    <link href="autocomplete/jquery.autocomplete.css" rel="stylesheet" type="text/css" />
    <script src="/Work/scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="/Work/Scripts/jqueryPager/jquery-1.2.6.pack.js" type="text/javascript"></script>
    <script src="/Work/Scripts/jqueryPager/jquery.pagination.js" type="text/javascript"></script>
    <script src="/Work/scripts/pub.js" type="text/javascript"></script>
    <script src="/Work/scripts/Says.js" type="text/javascript"></script>
    <script src="../Scripts/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <%--<script src="artDialog4.1.7/artDialog.js?skin=blue"></script>--%>
    <script src="artDialog4.1.7/artDialog.source.js?skin=blue" type="text/javascript"></script>
    <script src="artDialog4.1.7/plugins/iframeTools.source.js" type="text/javascript"></script>
    <script src="autocomplete/jquery.autocomplete.min.js" type="text/javascript"></script>
    <title>工单信息列表</title>
    <script type="text/javascript">
        (function (config) {
            config['lock'] = true;
            config['fixed'] = true;
            config['okVal'] = 'Ok';
            config['cancelVal'] = 'Cancel';
            // [more..]
        })(art.dialog.defaults);
        function returnPage() {
            window.location.replace(window.location.href.replace("page", "fy_none"));
        }
        function importExcel() {
            $.ajax({
                type: "POST", //用POST方式传输 , 
                dataType: "json", //数据格式:JSON
                url: '/CallCenter/CallCenter.ashx', //目标地址
                data: "option=dc",
                beforeSend: function () { }, //发送数据之前
                complete: function () { }, //接收数据完毕
                success: function (json) {
                    alert(10);
                }
            });
        }
        var isSave = 0;
        function NewWorkBill(cid) {
            art.dialog.open('Satisfaction.aspx?hf=0&cid=' + cid
            ,
            { title: '工单信息',
                // 在open()方法中，init会等待iframe加载完毕后执行
                init: function () {
                    var iframe = this.iframe.contentWindow;
                    var top = art.dialog.top; // 引用顶层页面window对象
                    var username = iframe.document.getElementById('Button1');
                    username.value = 'guest';
                    //                    top.document.title = '测试';
                },
                ok: function () {
                    debugger;
                    var iframe = this.iframe.contentWindow;
                    var top = art.dialog.top; // 引用顶层页面window对象 workBillForm
                    iframe.document.getElementById('workBillForm').submit();
                    isSave = 1;
                    return false;
                    //                    username.click();
                    //                    $(username).click();
                },
                cancel: function () { if (isSave == 1) parent.location.reload(); }
            , width: 1020, height: 480
            }, false);
            //            art.dialog.open('WorkBill.aspx?cid=' + cid, null, false);
        }
        function EditWorkBill(wid) {
            art.dialog.open('Satisfaction.aspx?hf=0&wid=' + wid
            ,
            { title: '工单信息',
                // 在open()方法中，init会等待iframe加载完毕后执行
                init: function () {
                    var iframe = this.iframe.contentWindow;
                    var top = art.dialog.top; // 引用顶层页面window对象
                    var username = iframe.document.getElementById('Button1');
                    username.value = 'guest';
                    //                    top.document.title = '测试';
                },
                ok: function () {
                    var iframe = this.iframe.contentWindow;
                    var top = art.dialog.top; // 引用顶层页面window对象
                    iframe.document.getElementById('workBillForm').submit();
                    isSave = 1;
                    return false;

                },
                cancel: function () { if (isSave == 1) parent.location.reload(); }
            , width: 1020, height: 480
            }, false);
        }
        function HuifangWorkBill(wid) {
            art.dialog.open('Satisfaction.aspx?wid=' + wid
            ,
            { title: '满意度调查-工单信息',
                // 在open()方法中，init会等待iframe加载完毕后执行
                init: function () {
                    var iframe = this.iframe.contentWindow;
                    var top = art.dialog.top; // 引用顶层页面window对象
                    var username = iframe.document.getElementById('Button1');
                    username.value = 'guest';
                    //                    top.document.title = '测试';
                },
                ok: function () {
                    var iframe = this.iframe.contentWindow;
                    var top = art.dialog.top; // 引用顶层页面window对象
                    iframe.document.getElementById('workBillForm').submit();
                    isSave = 1;
                    return false;
                    //                    username.click();

                },
                cancel: function () { if (isSave == 1) parent.location.reload(); }
            , width: 1020, height: 480
            }, false);
        }
        function searchWorkBill() {
            var url = "SatisfactionList.aspx";
            var urlE = "?sltType=" + $("#sltType").val();
            if ($.trim($("#txtCustomerName").val()).length > 0) {
                urlE = urlE + "&cname=" + $.trim($("#txtCustomerName").val());
            }
            if ($.trim($("#txtUserName").val()).length > 0) {
                urlE = urlE + "&uname=" + $.trim($("#txtUserName").val());
            }
            if ($.trim($("#txtEndTime").val()).length > 0) {
                urlE = urlE + "&etime=" + $.trim($("#txtEndTime").val());
            }
            if ($.trim($("#txtStartTime").val()).length > 0) {
                urlE = urlE + "&stime=" + $.trim($("#txtStartTime").val());
            }
            if ($.trim($("#txtOwnerName").val()).length > 0) {
                urlE = urlE + "&owner=" + $.trim($("#txtOwnerName").val());
            }
            if ($.trim($("#sltStatus").val()).length > 0) {
                urlE = urlE + "&status=" + $.trim($("#sltStatus").val());
            }
            if ($.trim($("#txtWorkBillCode").val()).length > 0) {
                urlE = urlE + "&code=" + $.trim($("#txtWorkBillCode").val());
            }
            //            urlE = encodeURI(urlE);
            //            alert(urlE);
            //            alert(decodeURI(urlE));
            window.location.href = url + urlE;
        }
        $().ready(function () {

            if (request("sltType") != "") {
                $("#sltType").val(request("sltType"));
            }
            if (request("cname") != "") {
                $("#txtCustomerName").val(decodeURI(request("cname")));
            }
            if (request("stime") != "") {
                $("#txtStartTime").val(request("stime"));
            }
            if (request("etime") != "") {
                $("#txtEndTime").val(request("etime"));
            }
            if (request("uname") != "") {
                $("#txtUserName").val(decodeURI(request("uname")));
                //                $("#txtUserName").val(Server.UrlDecode($("#txtUserName").val()));
            }
            if (request("owner") != "") {
                $("#txtOwnerName").val(decodeURI(request("owner")));
                //                $("#txtUserName").val(Server.UrlDecode($("#txtUserName").val()));
            }
            if (request("status") != "") {
                $("#sltStatus").val(decodeURI(request("status")));
            }
            if (request("code") != "") {
                $("#txtWorkBillCode").val(decodeURI(request("code").replace("#", "")));
                //                $("#txtUserName").val(Server.UrlDecode($("#txtUserName").val()));
            }
        });
        function request(paras) {
            var url = location.href;
            var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
            var paraObj = {}
            for (i = 0; j = paraString[i]; i++) {
                paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=") + 1, j.length);
            }
            var returnValue = paraObj[paras.toLowerCase()];
            if (typeof (returnValue) == "undefined") {
                return "";
            } else {
                return returnValue;
            }
        }
    </script>
    <script type="text/javascript">
       var Customers = <%=strCumstomers %>;
        var Users = <%=strUsers %>;
       $(function () {
        $('#txtOwnerName').autocomplete(Users, {
//               extraParams: { keyword: function () { return $('#txtUserName').val(); } },
               //                                dataType: "json", 
               max: 12,    //列表里的条目数
               minChars: 0,    //自动完成激活之前填入的最小字符
               width: 400,     //提示的宽度，溢出隐藏
               scrollHeight: 300,   //提示的高度，溢出显示滚动条
               matchContains: true,    //包含匹配，就是data参数里的数据，是否只要包含文本框里的数据就显示
               autoFill: false,    //自动填充
               formatItem: function (row, i, max) {
//                   return i + '/' + max + ':"' + row.name + '"[' + row.to + ']';
                    return i + '/' + max + ':"' + row.name;
               },
               formatMatch: function (row, i, max) {
                   return row.name;
               },
               formatResult: function (row) {
                   return row.name;
               }
           }).result(function (event, row, formatted) {
               row = eval(row);
               //                $('#txtCustomerName').val(row[0].name);
               //                alert(row[0].to);
           });
         $('#txtUserName').autocomplete(Users, {
//               extraParams: { keyword: function () { return $('#txtUserName').val(); } },
               //                                dataType: "json", 
               max: 12,    //列表里的条目数
               minChars: 0,    //自动完成激活之前填入的最小字符
               width: 400,     //提示的宽度，溢出隐藏
               scrollHeight: 300,   //提示的高度，溢出显示滚动条
               matchContains: true,    //包含匹配，就是data参数里的数据，是否只要包含文本框里的数据就显示
               autoFill: false,    //自动填充
               formatItem: function (row, i, max) {
//                   return i + '/' + max + ':"' + row.name + '"[' + row.to + ']';
                    return i + '/' + max + ':"' + row.name;
               },
               formatMatch: function (row, i, max) {
                   return row.name;
               },
               formatResult: function (row) {
                   return row.name;
               }
           }).result(function (event, row, formatted) {
               row = eval(row);
           });

           $('#txtCustomerName').autocomplete(Customers, {
//               extraParams: { keyword: function () { return $('#txtCustomerName').val(); } },
               //                                dataType: "json", 
               max: 12,    //列表里的条目数
               minChars: 0,    //自动完成激活之前填入的最小字符
               width: 400,     //提示的宽度，溢出隐藏
               scrollHeight: 300,   //提示的高度，溢出显示滚动条
               matchContains: true,    //包含匹配，就是data参数里的数据，是否只要包含文本框里的数据就显示
               autoFill: false,    //自动填充
               formatItem: function (row, i, max) {
//                   return i + '/' + max + ':"' + row.name + '"[' + row.to + ']';
                    return i + '/' + max + ':"' + row.name;
               },
               formatMatch: function (row, i, max) {
                   return row.name;
               },
               formatResult: function (row) {
                   return row.name;
               }
           }).result(function (event, row, formatted) {
               row = eval(row);
               //                $('#txtCustomerName').val(row[0].name);
               //                alert(row[0].to);
           });
       });
          function ShowWorkBill(wid) {
            art.dialog.open('ServiceHistoryListForCustomer.aspx?wid=' + wid
            ,
            { title: '服务记录',
                // 在open()方法中，init会等待iframe加载完毕后执行
                init: function () {
                    var iframe = this.iframe.contentWindow;
                    var top = art.dialog.top; // 引用顶层页面window对象
                    var username = iframe.document.getElementById('Button1');
                    username.value = 'guest';
                                        top.document.title = '测试';
                },
                ok: function () {              
                    var iframe = this.iframe.contentWindow;
                    var top = art.dialog.top; // 引用顶层页面window对象
                    var username = iframe.document.getElementById('Button1').click();
//                    username.click();
                },
                cancel: true
            , width: 620, height: 530
            }, false);
        }
    </script>
    <style>
        a
        {
            color: #009AEA;
        }
    </style>
</head>
<body>
    <uc2:ChangeHeadImg ID="ChangeHeadImg2" runat="server" />
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="divload" style="top: 70%; right: 30%; position: absolute; padding: 0px;
        margin: 0px; z-index: 999">
        <img src="Scripts/jqueryPager/spinner3-greenie.gif" />
    </div>
    <uc1:Top ID="Top1" runat="server" />
    <div class="mu_nv" style="margin-top: 30px;">
    </div>
    <div style="clear: both">
    </div>
    <div style="width: 1200px; margin: 0 auto;">
        <div class="drag" style="width: 1200px; margin: 0 auto; background-color: rgb(255, 255, 255)">
            <div id="Div1" class="toplist">
                <ul>
                    <uc4:UserRights ID="UserRights1" runat="server" />
                </ul>
                <div style="clear: both">
                </div>
            </div>
            <div id="diy4" class="area">
                <input type="hidden" name="typecid" value="1110" />
                <table class="tblog" style="float: left; margin-left: 10px;">
                    <tr>
                        <td class="tblogtd">
                            类别:
                        </td>
                        <td class="tblogtd_c">
                            <select name="sltType" id="sltType">
                                <%=GetCategory(-1)%>
                            </select>
                            工单编号：
                            <input type="text" name="txtWorkBillCode" id="txtWorkBillCode" style="width: 124px"
                                value="" />
                        </td>
                        <td class="tblogtd">
                            服务时间:
                        </td>
                        <td class="tblogtd_c">
                            <input type="text" name="txtStartTime" id="txtStartTime" class="Wdate" onfocus="WdatePicker({readOnly:true})"
                                value="" />
                        </td>
                    </tr>
                    <tr>
                        <td class="tblogtd">
                            客户名称:
                        </td>
                        <td class="tblogtd_c">
                            <input type="text" name="txtCustomerName" id="txtCustomerName" style="width: 124px"
                                value="" />
                        </td>
                        <td class="tblogtd">
                        </td>
                        <td class="tblogtd_c">
                            <input type="text" name="txtEndTime" id="txtEndTime" value="" class="Wdate" onfocus="WdatePicker({readOnly:true})" />
                        </td>
                    </tr>
                    <tr>
                        <td class="tblogtd">
                            指定服务人:
                        </td>
                        <td class="tblogtd_c">
                            <input type="text" name="txtUserName" id="txtUserName" style="width: 126px" value="" />
                        </td>
                        <td class="tblogtd">
                            我的客户：
                        </td>
                        <td class="tblogtd_c">
                            <input type="text" name="txtOwnerName" id="txtOwnerName" style="width: 105px" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td class="tblogtd">
                            状态：
                        </td>
                        <td class="tblogtd_c">
                            <select id="sltStatus" name="sltStatus">
                                <%= strCallWorkBillStatusDrop%>
                            </select>
                        </td>
                        <td class="tblogtd">
                            &nbsp;
                        </td>
                        <td class="tblogtd_c" style="float: right; display: block">
                            <input id="Button1" type="button" style="margin-right: 10px; width: 50px; height: 25px;"
                                value="查询" onclick="searchWorkBill()" />
                            &nbsp;<input id="Reset1" type="reset" value="清空条件" style="width: 60px; height: 25px;" />
                            <asp:Button ID="Button3" runat="server" Text="导出Excel" OnClick="Button3_Click" />
                        </td>
                    </tr>
                </table>
                <div id="pgt" class="bm bw0 pgs cl">
                    <div class="pgt">
                        <div class="pg">
                            <%=strtt%>
                            <span id="fd_page_top1"></span><span class="pgb y"><a href="javascript:;" onclick="returnPage();">
                                第一页</a></span>
                        </div>
                    </div>
                </div>
            </div>
            <div id="threadlist" class="tl bm bmw">
                <div class="th">
                    <table cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="num">
                                    工单编号
                                </td>
                                <td class="num">
                                    工单类型
                                </td>
                                <td class="by" style="width: 120px;">
                                    客户名称
                                </td>
                                <td class="num">
                                    联系人
                                </td>
                                <td class="num">
                                    联系电话
                                </td>
                                <td class="num">
                                    创建人
                                </td>
                                <td class="num" style="width: 100px;">
                                    创建时间
                                </td>
                                <td class="num">
                                    服务人
                                </td>
                                <td class="num" style="width: 100px;">
                                    最后服务时间
                                </td>
                                <td class="num">
                                    状态
                                </td>
                                <td class="num">
                                    操作
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="bm_c">
                    <div id="forumnew" style="display: none">
                    </div>
                    <table summary="forum_26" cellspacing="0" cellpadding="0" id="tdSerach">
                        <%=script %>
                    </table>
                </div>
            </div>
            <div class="bm bw0 pgs cl">
                <div class="pg">
                    <%=strtt %>
                    <span id="Span1"></span><span class="pgb y"><a href="javascript:;" onclick="returnPage();">
                        第一页</a></span>
                </div>
            </div>
        </div>
        <div class="W_main">
        </div>
        <div class="foot">
            <uc3:Bottom ID="Bottom1" runat="server" />
        </div>
    </div>
    </form>
</body>
</html>

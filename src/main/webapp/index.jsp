<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0023)https://www.52pojie.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml" class=" widthauto">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>自由浏览，知识无界限 </title>

    <meta name="keywords" content="免费教程，教程大全">
    <meta name="description" content="自由浏览论坛致力于软件安全与病毒分析的前沿，丰富的技术版块交相辉映，由无数热衷于软件加密解密及反病毒爱好者共同维护 ">
    <meta name="generator" content="Discuz!">
    <meta name="MSSmartTagsPreventParsing" content="True">
    <meta http-equiv="MSThemeCompatible" content="Yes">
    <base href=".">
    <link rel="stylesheet" type="text/css" href="./resources/css/home/common.css">
    <link rel="stylesheet" type="text/css"
          href="./resources/css/home/forum_index.css">
    <link rel="stylesheet" id="css_extstyle" type="text/css"
          href="./resources/css/home/style.css">

    <meta name="application-name" content="自由浏览">
    <link rel="archives" title="自由浏览" href="https://www.52pojie.cn/archiver/">
    <link rel="stylesheet" id="css_widthauto" type="text/css"
          href="./resources/css/home/widthauto.css">


    <link rel="stylesheet" id="css_responsive" type="text/css"
          href="./resources/css/home/responsive.css">
    <script src="./resources/js/common.js"></script>
    <script>
        function switchTab_7ree(prefix, current, total, activeclass) {
            activeclass = !activeclass ? 'a thisbutton_'+prefix : activeclass;
            for(var i = 1; i <= total;i++) {
                var classname = ' '+$(prefix + '_' + i).className+' ';
                $(prefix + '_' + i).className = "";
                $(prefix + '_c_' + i).style.display = 'none';
            }
            $(prefix + '_' + current).className = activeclass;
            $(prefix + '_c_' + current).style.display = '';
        }


        var tip={getele_7ree:function(ele){
                if(typeof(ele)=="object")
                    return ele;
                else if(typeof(ele)=="string"||typeof(ele)=="number")
                    return document.getElementById(ele.toString());
                return null;
            },
            mousePos:function(e){
                var x,y;
                var e = e||window.event;
                return{x:e.clientX+document.body.scrollLeft+document.documentElement.scrollLeft,
                    y:e.clientY+document.body.scrollTop+document.documentElement.scrollTop};
            },
            start:function(obj){
                var self = this;
                var t = self.getele_7ree("mjs:tip");
                obj.onmousemove=function(e){
                    var mouse = self.mousePos(e);
                    t.style.left = mouse.x + 10 + 'px';

                    t.style.top = mouse.y + 10 + 'px';

                    t.innerHTML = obj.getAttribute("tips");
                    t.style.display = '';
                };
                obj.onmouseout=function(){
                    t.style.display = 'none';
                };
            }
        }
    </script>
    <script>var STYLEID = '1', STATICURL = 'https://static.52pojie.cn/static/',
        IMGDIR = 'https://static.52pojie.cn/static/image/common', VERHASH = 'e2N', charset = 'UTF-8', discuz_uid = '0',
        cookiepre = 'htVD_2132_', cookiedomain = '', cookiepath = '/', showusercard = '0', attackevasive = '',
        disallowfloat = 'login|newthread', creditnotice = '', defaultstyle = './template/default/style/t5',
        REPORTURL = 'aHR0cHM6Ly93d3cuNTJwb2ppZS5jbi8=', SITEURL = 'https://www.52pojie.cn/',
        JSPATH = 'https://static.52pojie.cn/cache/', CSSPATH = 'https://static.52pojie.cn/cache/style_',
        DYNAMICURL = '';</script>
</head>

<body id="nv_forum" class="pg_index" onkeydown="if(event.keyCode==27) return false;">
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div id="toptb" class="cl">
    <div class="wp">
        <div class="z"><a href="https://weibo.com/52pojie" rel="nofollow" target="_blank">官方微博</a><a
                href="https://www.52pojie.cn/thread-1084199-1-1.html" title="论坛会员违规、禁言、禁止ID名单列表" target="_blank"
                style="color: gray">违规会员处罚记录</a><a href="https://www.52pojie.cn/thread-349073-1-1.html" target="_blank"
                                                   style="color: red">官方入门教学培训</a></div>
        <div class="y">
            <a id="switchblind" href="javascript:;" onclick="toggleBlind(this)" title="开启辅助访问" class="switchblind">开启辅助访问</a>
            <a href="https://www.52pojie.cn/thread-209287-1-1.html" title="修复各种访问不了论坛、访问论坛异常、验证码异常等各种问题的大杀器！"
               target="_blank">【网络诊断修复工具】</a><a href="javascript:;" id="switchwidth" onclick="widthauto(this)"
                                                title="切换到窄版" class="switchwidth">切换到窄版</a>
        </div>
    </div>
</div>
<div id="hd">
    <div class="wp">
        <div class="hdc cl"><h2><a href="https://www.52pojie.cn/"
                                   title="吾爱破解 - LCG - LSG |安卓破解|病毒分析|www.52pojie.cn"><img
                src="./吾爱破解 - LCG - LSG_安卓破解_病毒分析_www.52pojie.cn_files/logo.png"
                alt="吾爱破解 - LCG - LSG |安卓破解|病毒分析|www.52pojie.cn" border="0"></a></h2>
            <form method="post" autocomplete="off" id="lsform"
                  action="https://www.52pojie.cn/member.php?mod=logging&amp;action=login&amp;loginsubmit=yes&amp;infloat=yes&amp;lssubmit=yes"
                  onsubmit="return lsSubmit();">
                <div class="fastlg cl">
                    <span id="return_ls" style="display:none"></span>
                    <div class="y pns">
                        <table cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td><label for="ls_username">帐号</label></td>
                                <td><input type="text" name="username" id="ls_username" class="px vm xg1"
                                           value="用户名/Email"
                                           onfocus="if(this.value == &#39;用户名/Email&#39;){this.value = &#39;&#39;;this.className = &#39;px vm&#39;;}"
                                           onblur="if(this.value == &#39;&#39;){this.value = &#39;用户名/Email&#39;;this.className = &#39;px vm xg1&#39;;}"
                                           tabindex="901"></td>
                                <td class="fastlg_l"><label for="ls_cookietime"><input type="checkbox" name="cookietime"
                                                                                       id="ls_cookietime" class="pc"
                                                                                       value="2592000" tabindex="903">自动登录</label>
                                </td>
                                <td>&nbsp;<a href="javascript:;"
                                             onclick="showWindow(&#39;login&#39;, &#39;member.php?mod=logging&amp;action=login&amp;viewlostpw=1&#39;)">找回密码</a>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="ls_password">密码</label></td>
                                <td><input type="password" name="password" id="ls_password" class="px vm"
                                           autocomplete="off" tabindex="902"></td>
                                <td class="fastlg_l">
                                    <button type="submit" class="pn vm" tabindex="904" style="width: 75px;"><em>登录</em>
                                    </button>
                                </td>
                                <td>&nbsp;<a href="https://www.52pojie.cn/member.php?mod=LSG_52register"
                                             class="xi2 xw1">注册[Register] </a></td>
                            </tr>
                            </tbody>
                        </table>
                        <input type="hidden" name="quickforward" value="yes">
                        <input type="hidden" name="handlekey" value="ls">
                    </div>

                    <div class="fastlg_fm y" style="margin-right: 10px; padding-right: 10px">
                        <p>
                            <a href="https://www.52pojie.cn/connect.php?mod=login&amp;op=init&amp;referer=index.php&amp;statfrom=login_simple"><img
                                    src="./resources/images/qq_login.gif" class="vm"
                                    alt="QQ登录"></a></p>
                        <p class="hm xg1" style="padding-top: 2px;">只需一步，快速开始</p>
                    </div>
                </div>
            </form>

        </div>

        <div id="nv_ph">
            <div id="nv">
                <a href="javascript:;" id="qmenu"
                   onmouseover="delayShow(this, function () {showMenu({&#39;ctrlid&#39;:&#39;qmenu&#39;,&#39;pos&#39;:&#39;34!&#39;,&#39;ctrlclass&#39;:&#39;a&#39;,&#39;duration&#39;:2});showForummenu();})">快捷导航</a>
                <ul>
                    <li id="mn_portal"><a href="https://www.52pojie.cn/portal.php" hidefocus="true"
                                          title="Portal">门户<span>Portal</span></a></li>
                    <li class="a" id="mn_forum"><a rel="index" href="https://www.52pojie.cn/forum.php" hidefocus="true"
                                                   title="www">网站<span>www</span></a></li>
                    <li id="mn_Na063"
                        onmouseover="showMenu({&#39;ctrlid&#39;:this.id,&#39;ctrlclass&#39;:&#39;hover&#39;,&#39;duration&#39;:2})">
                        <a href="https://www.52pojie.cn/forum.php?mod=guide&amp;view=newthread" hidefocus="true"
                           title="论坛最新帖子一览无余！" style="color: yellow">新帖<span>论坛最新帖子一览无余！</span></a></li>
                    <li id="mn_Ne008"><a href="https://www.52pojie.cn/search.php" hidefocus="true"
                                         title="由百度提供的站内搜索，优点搜索内容全而快。" target="_blank" style="color: yellow">搜索<span>由百度提供的站内搜索，优点搜索内容全而快。</span></a>
                    </li>
                    <li id="mn_forum_11"><a href="https://www.52pojie.cn/forum.php?mod=collection" hidefocus="true"
                                            title="Collection">专辑<span>Collection</span></a></li>
                    <li id="mn_N99ef"><a
                            href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=8&amp;filter=specialtype&amp;specialtype=reward&amp;rewardtype=1"
                            hidefocus="true"
                            title="吾爱破解论坛帮助大家解决问题，共同进步，获取论坛币！">悬赏<span>吾爱破解论坛帮助大家解决问题，共同进步，获取论坛币！</span></a></li>
                    <li id="mn_N12a7"><a href="https://www.52pojie.cn/misc.php?mod=ranklist" hidefocus="true"
                                         title="Ranklist">排行榜<span>Ranklist</span></a></li>
                    <li id="mn_N05be"><a href="https://www.52pojie.cn/thread-143136-1-1.html" hidefocus="true"
                                         target="_blank">总版规</a></li>
                    <li id="mn_Na678"
                        onmouseover="showMenu({&#39;ctrlid&#39;:this.id,&#39;ctrlclass&#39;:&#39;hover&#39;,&#39;duration&#39;:2})">
                        <a href="https://down.52pojie.cn/" hidefocus="true" title="在线破解工具包，实时提供最新逆向资源！" target="_blank"
                           style="font-weight: bold;color: cyan">爱盘<span>在线破解工具包，实时提供最新逆向资源！</span></a></li>
                    <li id="mn_N0a2c"><a href="https://www.52pojie.cn/misc.php?mod=faq" hidefocus="true" title="Help">帮助<span>Help</span></a>
                    </li>
                </ul>
                <a style="float: right;display: inline;margin-top: 5px;margin-left: 3px;margin-right: 3px;"
                   href="javascript:;"
                   onclick="showWindow(&#39;csu_wechat_scan_scan&#39;,&#39;plugin.php?id=csu_wechat_scan:scan&#39;,&#39;get&#39;,0);return false;">
                    <img src="./resources/images/scan.gif">
                </a></div>
        </div>
        <ul class="p_pop h_pop" id="mn_Na063_menu" style="display: none">
            <li><a href="https://www.52pojie.cn/home.php?mod=follow&amp;view=follow" hidefocus="true" target="_blank"
                   style="color: red">关注人的新帖</a></li>
            <li><a href="https://www.52pojie.cn/forum.php?mod=guide&amp;view=tech" hidefocus="true" target="_blank"
                   style="color: blue">技术新帖合集</a></li>
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=2&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true" target="_blank">原创发布新贴</a></li>
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=5&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true" target="_blank">脱壳破解新帖</a></li>
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=65&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true" target="_blank">移动安全新帖</a></li>
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=32&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true" target="_blank">病毒分析新帖</a></li>
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=59&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true" target="_blank">软件调试新贴</a></li>
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=6&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true" target="_blank">动画发布新帖</a></li>
        </ul>
        <ul class="p_pop h_pop" id="mn_home_4_menu" style="display: none">
            <li><a href="https://www.52pojie.cn/home.php?mod=spacecp&amp;ac=invite" hidefocus="true"
                   title="通过购买邀请码邀请好友注册论坛" style="font-weight: bold;color: red">邀请好友注册</a></li>
        </ul>
        <div class="p_pop h_pop" id="mn_userapp_menu" style="display: none"></div>
        <ul class="p_pop h_pop" id="mn_Na678_menu" style="display: none">
            <li><a href="https://down.52pojie.cn/LCG/" hidefocus="true" target="_blank">LCG</a></li>
            <li><a href="https://down.52pojie.cn/LSG/" hidefocus="true" target="_blank">LSG</a></li>
            <li><a href="https://down.52pojie.cn/Tools/" hidefocus="true" target="_blank">Tools</a></li>
            <li><a href="https://down.52pojie.cn/Logo/" hidefocus="true" target="_blank">吾爱破解Logo</a></li>
            <li><a href="https://down.52pojie.cn/Logo/Wallpaper/" hidefocus="true" target="_blank">吾爱破解桌面壁纸</a></li>
            <li>
                <a href="https://down.52pojie.cn/%E5%90%BE%E7%88%B1%E7%A0%B4%E8%A7%A3%E8%A7%86%E9%A2%91%E6%95%99%E7%A8%8B/"
                   hidefocus="true" target="_blank">吾爱破解视频教程</a></li>
            <li>
                <a href="https://down.52pojie.cn/%E5%90%BE%E7%88%B1%E7%A0%B4%E8%A7%A3%E8%AE%BA%E5%9D%9B%E7%B2%BE%E5%8D%8E%E9%9B%86/"
                   hidefocus="true" target="_blank">吾爱破解论坛精华集</a></li>
            <li><a href="https://down.52pojie.cn/Tools/Debuggers/" hidefocus="true" target="_blank">吾爱破解专用版Ollydbg</a>
            </li>
        </ul>
        <ul class="p_pop h_pop" id="mn_Ndb2c_menu" style="display: none">
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=15&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true">处理举报贴</a></li>
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=66&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true">处理福利贴</a></li>
            <li>
                <a href="https://www.52pojie.cn/forum.php?mod=forumdisplay&amp;fid=10&amp;filter=author&amp;orderby=dateline"
                   hidefocus="true">处理水区贴</a></li>
            <li><a href="https://www.52pojie.cn/forum-23-1.html" hidefocus="true">办公区</a></li>
            <li><a href="https://www.52pojie.cn/forum-34-1.html" hidefocus="true">证据区</a></li>
            <li><a href="http://mail.52pojie.cn/" hidefocus="true">论坛邮箱</a></li>
        </ul>
        <div id="mu" class="cl">
        </div>
        <div class="comiis_nav">
            <ul class="nav_ico02">
                <li><a href="https://www.52pojie.cn/forum-2-1.html" target="_blank"
                       title="吾爱破解坛友原创作品展示，包含Windows原创工具，也有Android、iOS和Mac OS程序相应的原创程序！"><font
                        color="green">原创发布区</font></a></li>
                <li><a href="https://www.52pojie.cn/forum-16-1.html" target="_blank"
                       title="精品软件推荐，软件交流天地，汇集众多精彩评论，热心会员每日更新。找你所需要的，给你我分享的！">精品软件区</a></li>
                <li><a href="https://www.52pojie.cn/forum-4-1.html" target="_blank"
                       title="加密解密相关软件发布区，包含最新最全的软件加密解密相关工具，工欲善其事必先利其器！"><font color="green">逆向资源区</font></a></li>
                <li><a href="https://www.52pojie.cn/forum-10-1.html" target="_blank" title="据说人滴祖先生活在水里">水漫金山区</a></li>
                <li><a href="https://www.52pojie.cn/forum-50-1.html" target="_blank"
                       title="你的计算机又受到病毒的侵扰使你不知所措了？不要着急，让我们一起帮助你解决问题！"><font color="green">病毒救援区</font></a></li>
                <li><a href="https://www.52pojie.cn/forum-66-1.html" target="_blank" title="福利资讯、经验分享">福利经验区</a></li>
            </ul>
            <ul class="nav_ico03">
                <li><a href="https://www.52pojie.cn/forum-5-1.html" target="_blank"
                       title="讨论Windows软件脱壳分析、软件逆向分析、代码逆向改造、虚拟机加密分析，也包括Mac OS等其他平台程序逆向分析一切尽在此！"><font
                        color="blue">脱壳破解区</font></a></li>
                <li><a href="https://www.52pojie.cn/forum-65-1.html" target="_blank"
                       title="讨论Android软件脱壳分析、Android软件逆向分析、Android系统安全分析、Android软件加密分析，当然iOS等移动程序逆向分析一切尽在此！"><font
                        color="red"><b>移动安全区</b></font></a></li>
                <li><a href="https://www.52pojie.cn/forum-32-1.html" target="_blank"
                       title="分析研究病毒木马技术，预防病毒木马，查杀病毒木马"><font color="blue">病毒分析区</font></a></li>
                <li><a href="https://www.52pojie.cn/forum-24-1.html" target="_blank"
                       title="学习编程探讨编程技巧，共同分享程序源代码">编程语言区</a></li>
                <li><a href="https://www.52pojie.cn/forum-6-1.html" target="_blank"
                       title="软件脱壳、软件汉化、软件逆向相关动画教程，学习心得分享。在这里我们可以携手并进，是我们汲取知识的伟大航路！"><font color="blue">动画发布区</font></a>
                </li>
                <li><a href="https://www.52pojie.cn/forum-41-1.html" target="_blank" title="工欲善其事 必先利其器，从这里能找到你想要的利器">安全工具区</a>
                </li>
            </ul>
            <ul class="nav_ico01">
                <li><a href="https://www.52pojie.cn/forum-13-1.html" target="_blank"
                       title="开放注册信息，版块调整公告，站点信息发布，会员违规处理等"><font color="red"><b>站点公告</b></font></a></li>
                <li><a href="https://www.52pojie.cn/thread-147931-1-1.html" target="_blank"
                       title="【吾爱破解站点导航帖】 - [让你快速融入吾爱破解大家庭]">站点导航</a></li>
                <li><a href="https://www.52pojie.cn/thread-143136-1-1.html" target="_blank" title="吾爱破解站点总版规！"><font
                        color="blue"><b>站点总版规</b></font></a></li>
                <li><a href="https://www.52pojie.cn/forum-25-1.html" target="_blank"
                       title="会员、版主、勋章、友情链接申请，发帖前请认真阅读本版规则！本区可以匿名发帖、跟帖相应的申请！">申请专区</a></li>
                <li><a href="https://www.52pojie.cn/forum-39-1.html" target="_blank"
                       title="此版块只允许发布招聘和求职相关信息！本区可以匿名发帖，欢迎正规公司前来发布招聘信息！"><font color="green"><b>招聘求职</b></font></a>
                </li>
                <li><a href="https://www.52pojie.cn/thread-309877-1-1.html" target="_blank"
                       title=" 版规速读，主要关于如何给自己加违规和如何消违规"><b>违规怎么办</b></a></li>
            </ul>
            <ul class="nav_ico04" style="width:80px;">
                <li><a href="https://www.52pojie.cn/misc.php?mod=faq" target="_blank"
                       title="有什么问题来这里看看吧，这里有你想知道的内容！"><font color="blue"><b>站点帮助</b></font></a></li>
                <li><a href="https://www.52pojie.cn/forum-72-1.html" target="_blank"
                       title="如果你对我们有什么意见或者建议，请在此提出">站务处理</a></li>
            </ul>
        </div>
        <div id="scbar" class="cl">
            <form id="scbar_form" method="post" autocomplete="off" onsubmit="searchFocus($(&#39;scbar_txt&#39;))"
                  action="https://www.52pojie.cn/search.php?searchsubmit=yes" target="_blank">
                <input type="hidden" name="mod" id="scbar_mod" value="search">
                <input type="hidden" name="srchtype" value="title">
                <input type="hidden" name="srhfid" value="">
                <input type="hidden" name="srhlocality" value="forum::index">
                <table cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr>
                        <td class="scbar_icon_td"></td>
                        <td class="scbar_txt_td"><input type="text" name="srchtxt" id="scbar_txt" value="请输入搜索内容"
                                                        autocomplete="off" x-webkit-speech="" speech="" class=" xg1"
                                                        placeholder="请输入搜索内容"></td>
                        <td class="scbar_type_td"><a href="javascript:;" id="scbar_type" class="xg1"
                                                     onclick="showMenu(this.id)" hidefocus="true">搜索</a></td>
                        <td class="scbar_btn_td">
                            <button type="submit" name="searchsubmit" id="scbar_btn" sc="1" class="pn pnc" value="true">
                                <strong class="xi2">搜索</strong></button>
                        </td>
                        <td class="scbar_hot_td">
                            <div id="scbar_hot">
                                <strong class="xw1">热搜: </strong>

                                <a href="https://www.52pojie.cn/search.php?mod=forum&amp;srchtxt=ctf&amp;searchsubmit=true&amp;source=hotsearch"
                                   target="_blank" class="xi2" sc="1">ctf</a>


                                <a href="https://www.52pojie.cn/search.php?mod=forum&amp;srchtxt=%D0%C2%CA%D6&amp;searchsubmit=true&amp;source=hotsearch"
                                   target="_blank" class="xi2" sc="1">新手</a>


                                <a href="https://www.52pojie.cn/search.php?mod=forum&amp;srchtxt=%CD%D1%BF%C7&amp;searchsubmit=true&amp;source=hotsearch"
                                   target="_blank" class="xi2" sc="1">脱壳</a>


                                <a href="https://www.52pojie.cn/search.php?mod=forum&amp;srchtxt=%BD%CC%B3%CC&amp;searchsubmit=true&amp;source=hotsearch"
                                   target="_blank" class="xi2" sc="1">教程</a>

                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <ul id="scbar_type_menu" class="p_pop" style="display: none;">
            <li><a href="javascript:;" rel="user">用户</a></li>
        </ul>

    </div>
</div>


<div id="wp" class="wp">

    <div id="pt" class="bm cl">
        <div class="y">
            <div id="an">
                <dl class="cl">
                    <dt class="z xw1">公告:&nbsp;</dt>
                    <dd>
                        <div id="anc">
                            <ul id="ancl">
                                <li><span><a href="https://www.52pojie.cn/thread-452355-1-1.html" target="_blank"
                                             class="xi2"><b><font color="#FF0000">【净坛行动】论坛禁止发布任何翻墙软件和违法犯罪程序！</font></b></a></span><em>(2015-12-30)</em>
                                </li>
                                <li><span><a href="https://www.52pojie.cn/thread-972681-1-1.html" target="_blank"
                                             class="xi2"><b><font color="#FF0000">2312312但不限于影视资源、原创或者转载商业软件的破解成品、破解补丁、注册机等。</font></b></a></span><em>(2019-6-14)</em>
                                </li>
                            </ul>
                        </div>
                    </dd>
                </dl>
            </div>

        </div>
        <div class="z">
            <a href="https://www.52pojie.cn/" class="nvhm" title="首页">吾爱破解 - LCG - LSG |安卓破解|病毒分析|www.52pojie.cn</a><em>&#187;</em><a
                rel="index" href="https://www.52pojie.cn/forum.php">网站</a></div>
        <div class="z"></div>
    </div>


    <style id="diy_style" type="text/css"></style>

    <div class="wp">
        <div id="diy1" class="area"></div>
    </div>

    <div id="ct" class="wp cl">
        <div id="chart" class="bm bw0 cl">
            <p class="chart z">今日: <em>3783</em><span class="pipe">|</span>昨日: <em>15718</em><span class="pipe">|</span>帖子:
                <em>24146297</em><span class="pipe">|</span>会员: <em>900183</em><span class="pipe">|</span>欢迎新会员: <em>13335189445</em>
            </p>
            <div class="y">
                <a href="https://www.52pojie.cn/forum.php?mod=guide&amp;view=new" title="最新回复" class="xi2">最新回复</a>
            </div>
        </div>
        <div id="diy_chart" class="area"></div>
        <div class="mn">





            <div class="fl bm" id="toplistbox_7ree">
                <div class="bm bmw cl widthauto">

                    <div class="bm_h cl">





                        <h2 style="font-weight:normal; ">

                            <div id="diymsg">
                                <div id="indiymsg">
                                    <div id="diymsg1"><a style="color:blue"
                                                         href="https://www.52pojie.cn/thread-1170142-1-1.html"
                                                         target="_blank">【权威发布】吾爱破解论坛2019精华集</a></div>
                                    <div id="diymsg2"></div>
                                </div>
                            </div>

                        </h2>

                        <img src="./resources/images/collapsed_no.gif" height="0"
                             width="0">


                    </div>

                    <div id="category_">

                        <table cellspacing="0" cellpadding="0" width="100%" class="toplist_7ree">
                            <tbody>
                            <tr class="toptitle_7ree">
                                <td align="center" width="21.428571428571%">
                                    <a href="https://www.52pojie.cn/forum.php?mod=guide&amp;view=newthread"
                                       target="_blank"><strong>新鲜出炉（更多）</strong></a>
                                </td>
                                <td align="center" width="21.428571428571%">
                                    <a href="https://www.52pojie.cn/forum.php?mod=guide&amp;view=tech"
                                       target="_blank"><strong>技术分享（<span
                                            style="color:red;">更多 New～</span>）</strong></a>
                                </td>
                                <td align="center" width="21.428571428571%">
                                    <a href="https://www.52pojie.cn/forum.php?mod=guide&amp;view=hot"
                                       target="_blank"><strong>人气热门（更多）</strong></a>
                                </td>
                                <td align="center" width="21.428571428571%">
                                    <a href="https://www.52pojie.cn/forum.php?mod=guide&amp;view=digest"
                                       target="_blank"><strong>精华采撷（更多）</strong></a>
                                </td>
                                <td align="center" width="14.285714285714%" style="border-right:none;">
                                    <a href="https://www.52pojie.cn/misc.php?mod=ranklist&amp;type=member&amp;view=post&amp;orderby=today"
                                       target="_blank"><strong>灌水嫌疑榜</strong></a>
                                </td>

                            </tr>
                            <tr class="fl_row">

                                <td valign="top" width="21.428571428571%"
                                    style="border-right:1px solid #CDCDCD; padding:5px;">
                                    <div class="boxbg_7ree">
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170148-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;蘑菇钉云签到管理系统&lt;/strong&gt;&lt;br&gt;
版块：『编程语言区』&lt;br&gt;
       作者：易古&lt;br&gt;
       时间：2020-05-02 10:17:33&lt;br&gt;
       " onmouseover="tip.start(this)">蘑菇钉云签到管理系统</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170146-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;抖音学习版&lt;/strong&gt;&lt;br&gt;
版块：『精品软件区』&lt;br&gt;
       作者：DA111&lt;br&gt;
       时间：2020-05-02 10:06:44&lt;br&gt;
       " onmouseover="tip.start(this)">抖音学习版</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170142-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;吾爱破解论坛精华集2019&lt;/strong&gt;&lt;br&gt;
版块：『电子书策划制作区』&lt;br&gt;
       作者：烟99&lt;br&gt;
       时间：2020-05-02 10:03:17&lt;br&gt;
       " onmouseover="tip.start(this)">吾爱破解论坛精华集2019</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170126-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;（搬运）DJ舞曲播放下载工具（IK123下载1.0）&lt;/strong&gt;&lt;br&gt;
版块：『精品软件区』&lt;br&gt;
       作者：枫叶荻花&lt;br&gt;
       时间：2020-05-02 09:41:42&lt;br&gt;
       " onmouseover="tip.start(this)">（搬运）DJ舞曲播放下载工具（IK123下载1.0）</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170096-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;【360修复】求大佬们分享一个360修复的教程&lt;/strong&gt;&lt;br&gt;
版块：『移动安全讨论求助区』&lt;br&gt;
       作者：夕阳kw&lt;br&gt;
       时间：2020-05-02 08:33:29&lt;br&gt;
       " onmouseover="tip.start(this)">【360修复】求大佬们分享一个360修复的教程</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170092-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;合金装备崛起：复仇 免安装中文绿色版&lt;/strong&gt;&lt;br&gt;
版块：『精品软件区』&lt;br&gt;
       作者：翱翔的真爱&lt;br&gt;
       时间：2020-05-02 08:17:14&lt;br&gt;
       " onmouseover="tip.start(this)">合金装备崛起：复仇 免安装中文绿色版</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170080-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;全能绘画助手 2.0.5.1&lt;/strong&gt;&lt;br&gt;
版块：『精品软件区』&lt;br&gt;
       作者：翱翔的真爱&lt;br&gt;
       时间：2020-05-02 07:14:51&lt;br&gt;
       " onmouseover="tip.start(this)">全能绘画助手 2.0.5.1</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170064-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;【枪战射击】《孤胆枪手2：征兵》免安装中文版&lt;/strong&gt;&lt;br&gt;
版块：『精品软件区』&lt;br&gt;
       作者：guoliuan&lt;br&gt;
       时间：2020-05-02 02:16:01&lt;br&gt;
       " onmouseover="tip.start(this)">【枪战射击】《孤胆枪手2：征兵》免安装中文版</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170059-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;图片助手(ImageAssistant)谷歌神器插件&lt;/strong&gt;&lt;br&gt;
版块：『精品软件区』&lt;br&gt;
       作者：zanlu&lt;br&gt;
       时间：2020-05-02 01:46:38&lt;br&gt;
       " onmouseover="tip.start(this)">图片助手(ImageAssistant)谷歌神器插件</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170048-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;超星学习通辅助插件&lt;/strong&gt;&lt;br&gt;
版块：『精品软件区』&lt;br&gt;
       作者：zanlu&lt;br&gt;
       时间：2020-05-02 00:55:05&lt;br&gt;
       " onmouseover="tip.start(this)">超星学习通辅助插件</a>
                                        </div>

                                    </div>
                                </td>

                                <td valign="top" width="21.428571428571%"
                                    style="border-right:1px solid #CDCDCD; padding:5px;">

                                    <div class="boxbg_7ree">
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170031-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;新词达人获取答案方法&lt;/strong&gt;&lt;br&gt;
 版块：『脱壳破解区』&lt;br&gt;
         作者：Xjl955666&lt;br&gt;
         时间：2020-05-01 23:51:15&lt;br&gt;
         " onmouseover="tip.start(this)">新词达人获取答案方法</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1170027-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;【SDK通用内购破解方案】5ri46YGT5piT全版本全平台所有游戏内购&lt;/strong&gt;&lt;br&gt;
 版块：『移动安全区』&lt;br&gt;
         作者：涛之雨&lt;br&gt;
         时间：2020-05-01 23:43:34&lt;br&gt;
         " onmouseover="tip.start(this)">【SDK通用内购破解方案】5ri46YGT5piT全版本全平台所有游戏内购</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169991-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;不搜关键字破解内购的一点思路&lt;/strong&gt;&lt;br&gt;
 版块：『移动安全区』&lt;br&gt;
         作者：bigbirdl&lt;br&gt;
         时间：2020-05-01 22:20:50&lt;br&gt;
         " onmouseover="tip.start(this)">不搜关键字破解内购的一点思路</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169860-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;记一次完整的RPG Maker MV游戏逆向过程（思路一）&lt;/strong&gt;&lt;br&gt;
 版块：『脱壳破解区』&lt;br&gt;
         作者：简单メ传说&lt;br&gt;
         时间：2020-05-01 19:08:35&lt;br&gt;
         " onmouseover="tip.start(this)">记一次完整的RPG Maker MV游戏逆向过程（思路一）</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169825-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;记一次完整的RPG Maker MV游戏逆向过程（准备阶段）&lt;/strong&gt;&lt;br&gt;
 版块：『脱壳破解区』&lt;br&gt;
         作者：简单メ传说&lt;br&gt;
         时间：2020-05-01 18:07:26&lt;br&gt;
         " onmouseover="tip.start(this)">记一次完整的RPG Maker MV游戏逆向过程（准备阶段）</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169721-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;找自信CM&lt;/strong&gt;&lt;br&gt;
 版块：『Android UnPackMe◇CrackMe◇KeyGenMe◇ReverseMe』&lt;br&gt;
         作者：赤座灯里&lt;br&gt;
         时间：2020-05-01 15:25:12&lt;br&gt;
         " onmouseover="tip.start(this)">找自信CM</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169516-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;五一啦！StydyPE+ 1.10版出炉&lt;/strong&gt;&lt;br&gt;
 版块：『逆向资源区』&lt;br&gt;
         作者：zaas&lt;br&gt;
         时间：2020-05-01 09:11:14&lt;br&gt;
         " onmouseover="tip.start(this)">五一啦！StydyPE+ 1.10版出炉</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169436-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;关于一个CrackMe的破解思路分享加过程&lt;/strong&gt;&lt;br&gt;
 版块：『脱壳破解区』&lt;br&gt;
         作者：wasdzjh&lt;br&gt;
         时间：2020-04-30 23:15:44&lt;br&gt;
         " onmouseover="tip.start(this)">关于一个CrackMe的破解思路分享加过程</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169339-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;一个非常简单，零基础的逆向教程 。&lt;/strong&gt;&lt;br&gt;
 版块：『动画发布区』&lt;br&gt;
         作者：2755816381&lt;br&gt;
         时间：2020-04-30 20:43:22&lt;br&gt;
         " onmouseover="tip.start(this)">一个非常简单，零基础的逆向教程 。</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169276-1-1.html" target="_blank"
                                               tips="
         &lt;strong &gt;C#一个混合开发的小程序+vmp看看能拦住大神们几分钟&lt;/strong&gt;&lt;br&gt;
 版块：『UnPackMe◇CrackMe◇KeyGenMe◇ReverseMe』&lt;br&gt;
         作者：tanzhiwei&lt;br&gt;
         时间：2020-04-30 19:04:06&lt;br&gt;
         " onmouseover="tip.start(this)">C#一个混合开发的小程序+vmp看看能拦住大神们几分钟</a>
                                        </div>


                                    </div>
                                </td>

                                <td valign="top" width="21.428571428571%"
                                    style="border-right:1px solid #CDCDCD; padding:5px;">

                                    <div class="boxbg_7ree">
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1166988-1-1.html"
                                               style="color: #3C9D40" target="_blank" tips="
       &lt;strong style=&quot;color: #3C9D40&quot;&gt;[开源/5.1更新]WELearn一键刷课，完成度100%只要一分钟&lt;/strong&gt;&lt;br&gt;
       版块：『原创发布区』&lt;br&gt;
       作者：000000&lt;br&gt;
       时间：2020-04-27 20:46:20&lt;br&gt;
       " onmouseover="tip.start(this)">[开源/5.1更新]WELearn一键刷课，完成度100%只要一分钟</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1167547-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;MIUI12官方ROM&lt;/strong&gt;&lt;br&gt;
       版块：『精品软件区』&lt;br&gt;
       作者：chenzelong&lt;br&gt;
       时间：2020-04-28 15:39:23&lt;br&gt;
       " onmouseover="tip.start(this)">MIUI12官方ROM</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1166915-1-1.html"
                                               style="color: #3C9D40" target="_blank" tips="
       &lt;strong style=&quot;color: #3C9D40&quot;&gt;2020/4/29【Na出品】Na超简PHP1.1 - 精简PHP环境搭建&lt;/strong&gt;&lt;br&gt;
       版块：『原创发布区』&lt;br&gt;
       作者：l99650&lt;br&gt;
       时间：2020-04-27 18:48:37&lt;br&gt;
       " onmouseover="tip.start(this)">2020/4/29【Na出品】Na超简PHP1.1 - 精简PHP环境搭建</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1167195-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;蓝瘦 (蓝奏云搜索下载神器)&lt;/strong&gt;&lt;br&gt;
       版块：『精品软件区』&lt;br&gt;
       作者：dengdaideke&lt;br&gt;
       时间：2020-04-28 09:07:43&lt;br&gt;
       " onmouseover="tip.start(this)">蓝瘦 (蓝奏云搜索下载神器)</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1167245-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;IDM 6.37.12（ 俄 重新打包版）以及解析百度网盘高速下载&lt;/strong&gt;&lt;br&gt;
       版块：『精品软件区』&lt;br&gt;
       作者：桂花糕乀&lt;br&gt;
       时间：2020-04-28 10:13:23&lt;br&gt;
       " onmouseover="tip.start(this)">IDM 6.37.12（ 俄 重新打包版）以及解析百度网盘高速下载</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1167226-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;稀缺资源——比赛评分系统&lt;/strong&gt;&lt;br&gt;
       版块：『精品软件区』&lt;br&gt;
       作者：ld8051&lt;br&gt;
       时间：2020-04-28 09:51:16&lt;br&gt;
       " onmouseover="tip.start(this)">稀缺资源——比赛评分系统</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1169105-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;双色球神器&lt;/strong&gt;&lt;br&gt;
       版块：『精品软件区』&lt;br&gt;
       作者：Aiming&lt;br&gt;
       时间：2020-04-30 15:43:15&lt;br&gt;
       " onmouseover="tip.start(this)">双色球神器</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1167324-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;【搬运】Fake location位置模拟1.2.0.6版本+全球学术快报 知网文 ...&lt;/strong&gt;&lt;br&gt;
       版块：『精品软件区』&lt;br&gt;
       作者：XQplayer&lt;br&gt;
       时间：2020-04-28 11:38:00&lt;br&gt;
       " onmouseover="tip.start(this)">【搬运】Fake location位置模拟1.2.0.6版本+全球学术快报 知网文 ...</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1166619-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;西窗烛 v4.8.0 国学诗词大全专业版&lt;/strong&gt;&lt;br&gt;
       版块：『精品软件区』&lt;br&gt;
       作者：tasbz&lt;br&gt;
       时间：2020-04-27 13:05:40&lt;br&gt;
       " onmouseover="tip.start(this)">西窗烛 v4.8.0 国学诗词大全专业版</a>
                                        </div>

                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1168471-1-1.html" target="_blank"
                                               tips="
       &lt;strong &gt;古墓丽影11暗影豪华版全服饰和武器古墓【百度网盘 天翼云盘】&lt;/strong&gt;&lt;br&gt;
       版块：『精品软件区』&lt;br&gt;
       作者：浩哥V587&lt;br&gt;
       时间：2020-04-29 18:20:40&lt;br&gt;
       " onmouseover="tip.start(this)">古墓丽影11暗影豪华版全服饰和武器古墓【百度网盘 天翼云盘】</a>
                                        </div>


                                    </div>
                                </td>

                                <td valign="top" width="21.428571428571%"
                                    style="border-right:1px solid #CDCDCD; padding:5px;">

                                    <div class="boxbg_7ree">
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1167011-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;安恒4月月赛 pwn2 sales_office（fastbin double free）&lt;/strong&gt;&lt;br&gt;
版块：『软件调试区』&lt;br&gt;
       作者：nigacat&lt;br&gt;
       时间：2020-04-27 21:15:52&lt;br&gt;
       " onmouseover="tip.start(this)">安恒4月月赛 pwn2 sales_office（fastbin double free）</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1162942-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;HTML5视频解密的方法（widevine的破解思路）&lt;/strong&gt;&lt;br&gt;
版块：『脱壳破解区』&lt;br&gt;
       作者：jimmyzang&lt;br&gt;
       时间：2020-04-22 17:00:24&lt;br&gt;
       " onmouseover="tip.start(this)">HTML5视频解密的方法（widevine的破解思路）</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1162853-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;极验反爬虫防护分析之交互流程分析&lt;/strong&gt;&lt;br&gt;
版块：『脱壳破解区』&lt;br&gt;
       作者：besterChen&lt;br&gt;
       时间：2020-04-22 15:46:54&lt;br&gt;
       " onmouseover="tip.start(this)">极验反爬虫防护分析之交互流程分析</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1161419-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;记一次Frida分析锁机病毒的体验&lt;/strong&gt;&lt;br&gt;
版块：『病毒分析区』&lt;br&gt;
       作者：LoLik&lt;br&gt;
       时间：2020-04-20 19:50:16&lt;br&gt;
       " onmouseover="tip.start(this)">记一次Frida分析锁机病毒的体验</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1159161-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;DLL巧妙的绕过被VMP壳HOOK的ZwProtectVirtualMemory&lt;/strong&gt;&lt;br&gt;
版块：『软件调试区』&lt;br&gt;
       作者：你与明日&lt;br&gt;
       时间：2020-04-17 21:25:44&lt;br&gt;
       " onmouseover="tip.start(this)">DLL巧妙的绕过被VMP壳HOOK的ZwProtectVirtualMemory</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1154139-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;游戏检测的对抗与防护艺术&lt;/strong&gt;&lt;br&gt;
版块：『软件调试区』&lt;br&gt;
       作者：鬼手56&lt;br&gt;
       时间：2020-04-11 20:36:18&lt;br&gt;
       " onmouseover="tip.start(this)">游戏检测的对抗与防护艺术</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1153309-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;已披露报告样本个人分析&lt;/strong&gt;&lt;br&gt;
版块：『病毒分析区』&lt;br&gt;
       作者：hjm666&lt;br&gt;
       时间：2020-04-10 18:04:01&lt;br&gt;
       " onmouseover="tip.start(this)">已披露报告样本个人分析</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1149738-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;【Office漏洞 第二弹】CVE-2018-0798及利用样本分析&lt;/strong&gt;&lt;br&gt;
版块：『软件调试区』&lt;br&gt;
       作者：ERFZE&lt;br&gt;
       时间：2020-04-06 12:39:05&lt;br&gt;
       " onmouseover="tip.start(this)">【Office漏洞 第二弹】CVE-2018-0798及利用样本分析</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1149210-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;XPOSED魔改一：获取特征&lt;/strong&gt;&lt;br&gt;
版块：『移动安全区』&lt;br&gt;
       作者：roysue&lt;br&gt;
       时间：2020-04-05 16:09:23&lt;br&gt;
       " onmouseover="tip.start(this)">XPOSED魔改一：获取特征</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">


                                            <a href="https://www.52pojie.cn/thread-1149036-1-1.html"
                                               style="font-weight: bold;color: #EE1B2E" target="_blank" tips="
       &lt;strong style=&quot;font-weight: bold;color: #EE1B2E&quot;&gt;如何正确深扒某9UAPP网络请求加密获取接口&lt;/strong&gt;&lt;br&gt;
版块：『移动安全区』&lt;br&gt;
       作者：ShiJiong&lt;br&gt;
       时间：2020-04-05 11:28:38&lt;br&gt;
       " onmouseover="tip.start(this)">如何正确深扒某9UAPP网络请求加密获取接口</a>
                                        </div>

                                    </div>
                                </td>

                                <td valign="top" width="14.285714285714%" style=" padding:5px;">

                                    <div class="boxbg_7ree">
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[35帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=1327045"
                                               target="_blank" c="1"> jamescookers988</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[31帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=829149"
                                               target="_blank" c="1"> hanxiao129</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[30帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=664600"
                                               target="_blank" c="1"> lu3729</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[20帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=1148530"
                                               target="_blank" c="1"> 山东狮子猫</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[20帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=1246758"
                                               target="_blank" c="1"> djp12306</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[17帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=1396505"
                                               target="_blank" c="1"> tuhongbintu</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[16帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=1316573"
                                               target="_blank" c="1"> blackedyou</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[16帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=1376602"
                                               target="_blank" c="1"> zxzww</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[15帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=1321953"
                                               target="_blank" c="1"> 星辰公子</a>
                                        </div>
                                        <div class="threadline_7ree" style="border-bottom:1px dashed #CDCDCD;">
                                            <span class="y" style="margin-right:5px; color:#999999;">[15帖]</span>
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;uid=1227599"
                                               target="_blank" c="1"> weizhu1983</a>
                                        </div>

                                    </div>
                                </td>

                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


            <div id="mjs:tip" class="tipinfo_7ree" style="position:absolute;display:none;"></div>

            <div class="fl bm">
                <div class="bm bmw  flg cl">
                    <div class="bm_h cl">
<span class="o">
<img id="category_26_img" src="./resources/images/collapsed_no.gif" title="收起/展开"
     alt="收起/展开" onclick="toggle_collapse(&#39;category_26&#39;);">
</span>
                        <span class="y">分区版主: <a href="https://www.52pojie.cn/home.php?mod=space&amp;username=Hmily"
                                                 class="notabs" c="1">Hmily</a></span>
                        <h2><a href="https://www.52pojie.cn/forum.php?gid=26" style="">【 Ｌ Ｃ Ｇ 】【 Ｌ Ｓ Ｇ 】</a></h2>
                    </div>
                    <div id="category_26" class="bm_c" style="">
                        <table cellspacing="0" cellpadding="0" class="fl_tb">
                            <tbody>
                            <tr>
                                <td class="fl_g" width="49.9%">
                                    <div class="fl_icn_g">
                                        <a href="https://www.52pojie.cn/forum-28-1.html"><img
                                                src="./resources/images/forum.gif"
                                                alt="『LCG Area』"></a>
                                    </div>
                                    <dl>
                                        <dt><a href="https://www.52pojie.cn/forum-28-1.html" style="color: #000000;">『LCG
                                            Area』</a></dt>
                                        <dd><em>主题: 238</em>, <em>帖数: <span title="13929">1万</span></em></dd>
                                        <dd>
                                            <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=729993&amp;goto=lastpost#lastpost"
                                               class="xi2">Wholetomato Visual Assist X 10 ...</a> <cite>2020-4-29 15:17
                                            <a href="https://www.52pojie.cn/home.php?mod=space&amp;username=LeoSky">LeoSky</a></cite>
                                        </dd>
                                    </dl>
                                </td>
                                <td class="fl_g" width="49.9%">
                                    <div class="fl_icn_g">
                                        <a href="https://www.52pojie.cn/forum-58-1.html"><img
                                                src="./resources/images/forum.gif"
                                                alt="『LSG Area』"></a>
                                    </div>
                                    <dl>
                                        <dt><a href="https://www.52pojie.cn/forum-58-1.html" style="color: #000000;">『LSG
                                            Area』</a></dt>
                                        <dd><em>主题: 51</em>, <em>帖数: 2468</em></dd>
                                        <dd>
                                            <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=69716&amp;goto=lastpost#lastpost"
                                               class="xi2">如何快速判断一个文件是否为病毒 ...</a> <cite>2017-3-13 15:03 <a
                                                href="https://www.52pojie.cn/home.php?mod=space&amp;username=wellgone">wellgone</a></cite>
                                        </dd>
                                    </dl>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="bm bmw  cl">
                    <div class="bm_h cl">
<span class="o">
<img id="category_1_img" src="./resources/images/collapsed_no.gif" title="收起/展开"
     alt="收起/展开" onclick="toggle_collapse(&#39;category_1&#39;);">
</span>
                        <span class="y">分区版主: <a href="https://www.52pojie.cn/home.php?mod=space&amp;username=ximo"
                                                 class="notabs" c="1">ximo</a>, <a
                                href="https://www.52pojie.cn/home.php?mod=space&amp;username=Kido" class="notabs" c="1">Kido</a>, <a
                                href="https://www.52pojie.cn/home.php?mod=space&amp;username=Sound" class="notabs"
                                c="1">Sound</a>, <a
                                href="https://www.52pojie.cn/home.php?mod=space&amp;username=%D4%C6%D4%DA%CC%EC"
                                class="notabs" c="1">云在天</a></span>
                        <h2><a href="https://www.52pojie.cn/forum.php?gid=1" style="">【 软件安全 】</a></h2>
                    </div>
                    <div id="category_1" class="bm_c" style="">
                        <table cellspacing="0" cellpadding="0" class="fl_tb">
                            <tbody>
                            <tr>
                                <td class="fl_icn">
                                    <a href="https://www.52pojie.cn/forum-2-1.html"><img
                                            src="./resources/images/forum_new.gif"
                                            alt="『原创发布区』"></a>
                                </td>
                                <td>
                                    <h2><a href="https://www.52pojie.cn/forum-2-1.html"
                                           style="color: #F30012;">『原创发布区』</a><em class="xw0 xi1" title="今日"> (166)</em>
                                    </h2>
                                    <p class="xg2"><font color="Red">◇吾爱破解坛友原创作品展示，包含Windows原创工具，也有Android、iOS和Mac
                                        OS程序相应的原创程序！◇</font></p>
                                    <p>版主: <span class="xi2"><a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=%D4%C6%D4%DA%CC%EC"
                                            class="notabs" c="1">云在天</a>, <a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=Hmily"
                                            class="notabs" c="1">Hmily</a>, <a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=%B7%E7%D6%AE%CF%BE%CF%EB"
                                            class="notabs" c="1">风之暇想</a></span></p></td>
                                <td class="fl_i">
                                    <span class="xi2">9238</span><span class="xg1"> / <span title="1938964">193万</span></span>
                                </td>
                                <td class="fl_by">
                                    <div>
                                        <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=1139652&amp;goto=lastpost#lastpost"
                                           class="xi2">开发者工具DevTools一键汉化工具</a> <cite>2020-5-2 10:30 <a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=xukai19941231">xukai19941231</a></cite>
                                    </div>
                                </td>
                            </tr>


                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="bm bmw  flg cl">
                    <div class="bm_h cl">
<span class="o">
<img id="category_35_img" src="./resources/images/collapsed_no.gif" title="收起/展开"
     alt="收起/展开" onclick="toggle_collapse(&#39;category_35&#39;);">
</span>
                        <h2><a href="https://www.52pojie.cn/forum.php?gid=35" style="">【 活动策划专区 】</a></h2>
                    </div>
                    <div id="category_35" class="bm_c" style="">
                        <table cellspacing="0" cellpadding="0" class="fl_tb">
                            <tbody>
                            <tr>
                                <td class="fl_g" width="19.9%">
                                    <div class="fl_icn_g">
                                        <a href="https://www.52pojie.cn/forum-62-1.html"><img
                                                src="./resources/images/forum.gif"
                                                alt="『周边活动作品区』"></a>
                                    </div>
                                    <dl>
                                        <dt><a href="https://www.52pojie.cn/forum-62-1.html">『周边活动作品区』</a></dt>
                                        <dd><em>主题: 282</em>, <em>帖数: <span title="11650">1万</span></em></dd>
                                        <dd>
                                            <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=995869&amp;goto=lastpost#lastpost">最后发表:
                                                2020-5-1 12:46</a>
                                        </dd>
                                    </dl>
                                </td>
                                <td class="fl_g" width="19.9%">
                                    <div class="fl_icn_g">
                                        <a href="https://www.52pojie.cn/forum-42-1.html"><img
                                                src="./resources/images/forum_new.gif"
                                                alt="『电子书策划制作区』"></a>
                                    </div>
                                    <dl>
                                        <dt><a href="https://www.52pojie.cn/forum-42-1.html">『电子书策划制作区』</a><em
                                                class="xw0 xi1" title="今日"> (31)</em></dt>
                                        <dd><em>主题: 39</em>, <em>帖数: 9721</em></dd>
                                        <dd>
                                            <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=1170142&amp;goto=lastpost#lastpost">最后发表:
                                                2020-5-2 10:29</a>
                                        </dd>
                                    </dl>
                                </td>
                                <td class="fl_g" width="19.9%">
                                    <div class="fl_icn_g">
                                        <a href="https://www.52pojie.cn/forum-67-1.html"><img
                                                src="./resources/images/forum.gif"
                                                alt="『2014CrackMe大赛』"></a>
                                    </div>
                                    <dl>
                                        <dt><a href="https://www.52pojie.cn/forum-67-1.html" style="color: #FF0000;">『2014CrackMe大赛』</a>
                                        </dt>
                                        <dd><em>主题: 153</em>, <em>帖数: 3792</em></dd>
                                        <dd>
                                            <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=299613&amp;goto=lastpost#lastpost">最后发表:
                                                2017-6-12 09:21</a>
                                        </dd>
                                    </dl>
                                </td>
                                <td class="fl_g" width="19.9%">
                                    <div class="fl_icn_g">
                                        <a href="https://www.52pojie.cn/forum-71-1.html"><img
                                                src="./resources/images/forum.gif"
                                                alt="『吾爱破解2016安全挑战赛』"></a>
                                    </div>
                                    <dl>
                                        <dt><a href="https://www.52pojie.cn/forum-71-1.html" style="color: #FF0000;">『吾爱破解2016安全挑战赛』</a>
                                        </dt>
                                        <dd><em>主题: 118</em>, <em>帖数: 4991</em></dd>
                                        <dd>
                                            <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=481548&amp;goto=lastpost#lastpost">最后发表:
                                                2017-5-28 15:55</a>
                                        </dd>
                                    </dl>
                                </td>
                                <td class="fl_g" width="19.9%">
                                    <div class="fl_icn_g">
                                        <a href="https://www.52pojie.cn/forum-77-1.html"><img
                                                src="./resources/images/forum.gif"
                                                alt="『腾讯游戏安全技术竞赛』"></a>
                                    </div>
                                    <dl>
                                        <dt><a href="https://www.52pojie.cn/forum-77-1.html">『腾讯游戏安全技术竞赛』</a></dt>
                                        <dd><em>主题: 17</em>, <em>帖数: 921</em></dd>
                                        <dd>
                                            <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=1155772&amp;goto=lastpost#lastpost">最后发表:
                                                2020-4-29 15:05</a>
                                        </dd>
                                    </dl>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="bm bmw  cl">
                    <div class="bm_h cl">
<span class="o">
<img id="category_11_img" src="./resources/images/collapsed_no.gif" title="收起/展开"
     alt="收起/展开" onclick="toggle_collapse(&#39;category_11&#39;);">
</span>
                        <span class="y">分区版主: <a href="https://www.52pojie.cn/home.php?mod=space&amp;username=Hmily"
                                                 class="notabs" c="1">Hmily</a></span>
                        <h2><a href="https://www.52pojie.cn/forum.php?gid=11" style="">【 管 理 】</a></h2>
                    </div>
                    <div id="category_11" class="bm_c" style="">
                        <table cellspacing="0" cellpadding="0" class="fl_tb">
                            <tbody>
                            <tr>
                                <td class="fl_icn">
                                    <a href="https://www.52pojie.cn/forum-13-1.html"><img
                                            src="./resources/images/forum_new.gif"
                                            alt="『站点公告』"></a>
                                </td>
                                <td>
                                    <h2><a href="https://www.52pojie.cn/forum-13-1.html">『站点公告』</a><em class="xw0 xi1"
                                                                                                       title="今日">
                                        (6)</em></h2>
                                    <p class="xg2">◇开放注册信息，版块调整公告，站点信息发布，会员违规处理等 ◇</p>
                                    <p>版主: <span class="xi2"><a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=zzage"
                                            class="notabs" c="1">zzage</a></span></p></td>
                                <td class="fl_i">
                                    <span class="xi2">418</span><span class="xg1"> / <span
                                        title="332626">33万</span></span></td>
                                <td class="fl_by">
                                    <div>
                                        <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=972681&amp;goto=lastpost#lastpost"
                                           class="xi2">【公告】吾爱归来</a> <cite>2020-5-2 10:11 <a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=%CD%E6%CE%EF%C9%A5%D6%BE">玩物丧志</a></cite>
                                    </div>
                                </td>
                            </tr>
                            <tr class="fl_row">
                                <td class="fl_icn">
                                    <a href="https://www.52pojie.cn/forum-39-1.html"><img
                                            src="./resources/images/forum.gif"
                                            alt="『招聘求职』"></a>
                                </td>
                                <td>
                                    <h2><a href="https://www.52pojie.cn/forum-39-1.html">『招聘求职』</a></h2>
                                    <p class="xg2">◇此版块只允许发布招聘和求职相关信息！◇<br>
                                        ◇本区支持游客发帖，欢迎正规公司前来发布招聘信息！◇</p>
                                    <p>版主: <span class="xi2"><a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=LCG"
                                            class="notabs" c="1">LCG</a></span></p></td>
                                <td class="fl_i">
                                    <span class="xi2">757</span><span class="xg1"> / <span
                                        title="14394">1万</span></span></td>
                                <td class="fl_by">
                                    <div>
                                        <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=1157823&amp;goto=lastpost#lastpost"
                                           class="xi2">360信息安全部招聘安全工程师/专 ...</a> <cite>2020-4-30 20:44 <a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=MK_Ibreak">MK_Ibreak</a></cite>
                                    </div>
                                </td>
                            </tr>
                            <tr class="fl_row">
                                <td class="fl_icn">
                                    <a href="https://www.52pojie.cn/forum-25-1.html"><img
                                            src="./resources/images/forum.gif"
                                            alt="『申请专区』"></a>
                                </td>
                                <td>
                                    <h2><a href="https://www.52pojie.cn/forum-25-1.html">『申请专区』</a><em class="xw0 xi1"
                                                                                                       title="今日">
                                        (8)</em></h2>
                                    <p class="xg2">◇会员、版主、勋章、友情链接申请，发帖前请认真阅读本版规则！◇<br>
                                        ◇本区支持游客发帖、跟帖相应的申请！◇</p>
                                    <p>版主: <span class="xi2"><a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=Peace"
                                            class="notabs" c="1">Peace</a></span></p></td>
                                <td class="fl_i">
                                    <span class="xi2">3327</span><span class="xg1"> / <span
                                        title="21502">2万</span></span></td>
                                <td class="fl_by">
                                    <div>
                                        <a href="https://www.52pojie.cn/forum.php?mod=redirect&amp;tid=1170038&amp;goto=lastpost#lastpost"
                                           class="xi2">申请会员ID：498397169</a> <cite>2020-5-2 09:18 <a
                                            href="https://www.52pojie.cn/home.php?mod=space&amp;username=Hmily">Hmily</a></cite>
                                    </div>
                                </td>
                            </tr>
                            <tr class="fl_row">
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="wp mtn">
                <div id="diy3" class="area"></div>
            </div>

            <div id="online" class="bm oll">
                <div class="bm_h">
                    <h3>
                        <strong>
                            在线会员
                        </strong>
                        <span class="xs1">- 总计 <strong>41955</strong> 人在线
- <strong>4195</strong> 会员,<strong>37760</strong> 位游客- 最高记录是 <strong>162830</strong> 于 <strong>2020-2-14</strong>.</span>
                    </h3>
                </div>
            </div>
            <div class="bm lk">
                <div id="category_lk" class="bm_c ptm">
                    <ul class="m mbn cl">
                        <li class="lk_logo mbm bbda cl"><img
                                src="./resources/images/logo.gif" border="0"
                                alt="吾爱破解 - LCG - LSG - 建立于2008年3月13日">
                            <div class="lk_content z"><h5><a href="https://www.52pojie.cn/" target="_blank">吾爱破解 - LCG -
                                LSG - 建立于2008年3月13日</a></h5>
                                <p>
                                    吾爱破解关注PC软件安全和移动安全领域，致力于软件安全与病毒分析的前沿，丰富的技术版块交相辉映，由众多热衷于软件加密解密及反病毒爱好者共同维护，留给世界一抹值得百年回眸的惊艳，沉淀百年来计算机应用之精华与优雅，信息线条与生活质感淡定交融，任岁月流转，低调而奢华的技术交流与探索却亘古不变。</p>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>

        </div>

    </div>

</div>
<div class="wp dnch_eo_f">
    <div class="res-footer-note"><p align="left"><br><font color="#ff0000">免责声明：<br>吾爱破解所发布的一切破解补丁、注册机和注册信息及软件的解密分析文章仅限用于学习和研究目的；不得将上述内容用于商业或者非法用途，否则，一切后果请用户自负。本站信息来自网络，版权争议与本站无关。您必须在下载后的24个小时之内，从您的电脑中彻底删除上述内容。如果您喜欢该程序，请支持正版软件，购买注册，得到更好的正版服务。如有侵权请邮件与我们联系处理。</font>
    </p>
        <p align="right"><font color="#ff0000" face="Comic Sans MS">Mail To:Service@52PoJie.Cn</font></p></div>
</div>




<style>
    .tipinfo_7ree{
        border:1px solid #CDCDCD;
        padding:5px 10px;
        width:220px;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;
        border-radius:4px;
        text-decoration: none;
        background-color:#FFFFFF;
        background:rgba(255,255,255,0.85);
        z-index:9999;
    }
</style>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{if $meta.des!=''}{$meta.des}{else}Buylink mang đến cho các chủ website cơ hội phát triển và kiếm tiền bền vững cùng chúng tôi. Đến với Buylink, các bạn sẽ là những người mang đến sự đổi mới cho ngành Internet Marketing tại Việt Nam. Bạn còn chần chừ gì nữa ?{/if}
Keywords: textlink, backlinks, seo, sem, internet marketing, online marketing, top 1 google, top 1 yahoo." />
    <meta name="keywords" content="Quảng cáo TextLink BuyLink Search Engine Optimization" />
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">
    <title>{if $meta.title!=''}{$meta.title}{else}Buylink - Mạng quảng cáo link hàng đầu và duy nhất tại Việt Nam !{/if}</title>


    <!-- Bootstrap core CSS -->
    <link href="{$template_dir}/css/bootstrap.css" rel="stylesheet">
    <script src="{$template_dir}/ckeditor/ckeditor.js" language="javascript"></script>
    <script src="{$template_dir}/js/jquery.min.js"></script>
    <script type="text/javascript">
        jQuery.noConflict();
    </script>
    <script src="{$template_dir}/js/jquery.validate.min.js"></script>
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="{$template_dir}/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="{$template_dir}/js/html5shiv.js"></script>
    <script src="{$template_dir}/js/respond.min.js"></script>
    <script src="{$template_dir}/js/jquery.corner.js"></script>
    <script type="text/javascript">
        jQuery('a.more').corner();
    </script>
    <![endif]-->
    <script type="text/javascript">
        var base_url ="{$_config.www}";
    </script>
    {literal}
        <script>
            var loc = "'"+this.location+"'";
            loc = loc.substring(1, loc.lastIndexOf('/')+1);
        </script>
    {/literal}
    <!-- Custom styles for this template -->
    <link href="{$template_dir}/css/styles.css" rel="stylesheet">
</head>
<body>
    {include file='header.tpl'}
    {$content}
    {include file='footer.tpl'}
    <!-- Placed at the end of the document so the pages load faster -->

    <script src="{$template_dir}/js/idangerous.swiper-2.1.min.js"></script>
    {literal}
        <script type="text/javascript">
            jQuery(window).load(function() {
                var swiper = new Swiper('.mainsw', {
                    pagination : '.pagination1',
                    loop:true,
                    grabCursor: true,
                    paginationClickable: true
                });

                var swiper = new Swiper('.mainswmb', {
                    pagination : '.pagination2',
                    loop:true,
                    grabCursor: true,
                    paginationClickable: true
                });
                jQuery('#blog-tab a').click(function (e) {
                    e.preventDefault();
                    jQuery(this).tab('show')
                });

                //Setup menu mobile
                var leftMenu;
                var leftContent = jQuery('.wrapper .container .row .left-slider');
                var $width = jQuery('body').width();
                if($width <= 961){
                    leftContent.attr('id','left-bottom');
                    leftMenu = leftContent.remove();
                    leftMenu.appendTo(".wrapper .container .inner-content");
                }

                window.onresize = function() {
                    var $width = jQuery('body').width();
                    var leftContent = jQuery('.wrapper .container .row .left-slider');
                    var $id = leftContent.attr('id');
                    if($width <= 961){
                        if($id != 'left-bottom'){
                            leftMenu = leftContent.remove();
                            leftMenu.appendTo(".wrapper .container .inner-content");
                            leftContent.attr('id','left-bottom');
                        }
                    }else{
                        if($id != 'left-top'){
                            leftMenu = leftContent.remove();
                            leftMenu.prependTo(".wrapper .container .inner-content");
                            leftContent.attr('id','left-top');
                        }
                    }
                }
            });
        </script>
    {/literal}

    <script src="{$template_dir}/js/bootstrap.js"></script>
    <script src="{$template_dir}/js/docs.min.js"></script>
    <script src="{$template_dir}/js/global.js"></script>
    <script src="{$template_dir}/js/prototype.js"></script>
 
</body>
</html>

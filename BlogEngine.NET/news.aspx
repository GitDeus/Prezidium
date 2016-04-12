
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="BlogEngine.NET.news" MasterPageFile="~/Custom/Themes/Standard/site.master" %>
<%@ Import Namespace="BlogEngine.Core" %>
<asp:content id="Content1" contentplaceholderid="cphBody" runat="Server">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href="Custom/Themes/Standard/css/main.css" rel="stylesheet" />
    <link href="Custom/Themes/Standard/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <!-- WOW JS Animation -->
    <link href="Content/animations.css" rel="stylesheet" />
    <!-- Owl Carousel -->
    <link href="Content/owl.carousel.css" rel="stylesheet" />
    <style>
        .content-wrapper {
            width: 100%;
        }
        .sidebar-wrapper {
            display: none;
        }
        .container{
            padding-left: 0;
            padding-right:0;
        }
    </style>
     <!--
            ==================================================
            Portfolio Section Start
            ================================================== -->
            <section id="works" class="works">
                <div class="container">
                    <div class="section-heading">
                        <h2 class="title wow fadeInDown animated" data-wow-delay=".3s">Наши услуги</h2>

                    </div>
                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <figure class="wow fadeInLeft animated" data-wow-duration="500ms" data-wow-delay="0ms">
                                <div class="img-wrapper">
                                    <img src="Content/images/Prezidium/1_АБОНЕНТСКОЕ%20ОБСЛУЖИВАНИЕ.jpg" class="img-responsive" alt="this is a title" >
                                    <div class="overlay">
                                        <div class="buttons">
                                            <a class="fancybox" href="images/portfolio/item-1.jpg">Demo</a>
                                            <a target="_blank" href="single-portfolio.html">Details</a>
                                        </div>
                                    </div>
                                </div>
                                <figcaption>
                                <h4>
                                <a href="#">
                                   АБОНЕНТСКОЕ ОБСЛУЖИВАНИЕ
                                </a>
                                </h4>
                                <p>
                                    Услуги
                                </p>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <figure class="wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="300ms">
                                <div class="img-wrapper">
                                    <img src="Content/images/Prezidium/1_ВНЕСУДЕБНОЕ%20УРЕГУЛИРОВАНИЕ.jpeg" class="img-responsive" alt="this is a title" >
                                    <div class="overlay">
                                        <div class="buttons">
                                            <a rel="gallery" class="fancybox" href="images/portfolio/item-2.jpg">Demo</a>
                                            <a target="_blank" href="single-portfolio.html">Details</a>
                                        </div>
                                    </div>
                       
                                </div>
                                <figcaption>
                                <h4>
                                <a href="#">
                                   ВНЕСУДЕБНОЕ УРЕГУЛИРОВАНИЕ
                                </a>
                                </h4>
                                <p>
                                    Услуги
                                </p>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <figure class="wow fadeInRight animated" data-wow-duration="500ms" data-wow-delay="300ms">
                                <div class="img-wrapper">
                                    <img src="Content/images/Prezidium/1_ПРЕДСТАВИТЕЛЬСТВО%20В%20СУДЕ.jpg" class="img-responsive" alt="" >
                                    <div class="overlay">
                                        <div class="buttons">
                                            <a rel="gallery" class="fancybox" href="images/portfolio/item-3.jpg">Demo</a>
                                            <a target="_blank" href="single-portfolio.html">Details</a>
                                        </div>
                                    </div>
                                </div>
          
                                <figcaption>
                                <h4>
                                <a href="#">
                                   ПРЕДСТАВИТЕЛЬСТВО В СУДЕ
                                </a>
                                </h4>
                                <p>
                                    Услуги
                                </p>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <figure class="wow fadeInLeft animated" data-wow-duration="500ms" data-wow-delay="600ms">
                                <div class="img-wrapper">
                                    <img src="Content/images/Prezidium/1_ПРЕДСТАВИТЕЛЬСТВО%20В%20ИСПОЛНИТЕЛЬНОМ%20ПРОИЗВОДСТВЕ.jpg" class="img-responsive" alt="" >
                                    <div class="overlay">
                                        <div class="buttons">
                                            <a rel="gallery" class="fancybox" href="images/portfolio/item-4.jpg">Demo</a>
                                            <a target="_blank" href="single-portfolio.html">Details</a>
                                        </div>
                               
                                    </div>
                                </div>
                                <figcaption>
                                <h4>
                                <a href="#">
                                    ПРЕДСТАВИТЕЛЬСТВО В ИСПОЛНИТЕЛЬНОМ ПРОИЗВОДСТВЕ
                                </a>
                                </h4>
                                <p>
                                    Услуги
                                </p>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <figure class="wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
                                <div class="img-wrapper">
                                    <img src="Content/images/Prezidium/1_ПРЕДСТАВИТЕЛЬСТВО%20В%20КОНТРОЛИРУЮЩИХ%20ОРГАНАХ.jpg" class="img-responsive" alt="" >
                                    <div class="overlay">
                                        <div class="buttons">
                                            <a rel="gallery" class="fancybox" href="images/portfolio/item-5.jpg">Demo</a>
                                            <a target="_blank" href="single-portfolio.html">Details</a>
                                        </div>
                                    </div>
                                </div>
                                <figcaption>
                                   
                                <h4>
                                <a href="#">
                                   ПРЕДСТАВИТЕЛЬСТВО В КОНТРОЛИРУЮЩИХ ОРГАНАХ
                                </a>
                                </h4>
                                <p>
                                    Услуги
                                </p>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <figure class="wow fadeInRight animated" data-wow-duration="500ms" data-wow-delay="1200ms">
                                <div class="img-wrapper">
                                    <img src="Content/images/Prezidium/1_ПРЕДСТАВИТЕЛЬСТВО%20В%20ОРГАНАХ%20ГОСУДАРСТВЕННОЙ%20ВЛАСТИ.jpg" class="img-responsive" alt="" >
                                    <div class="overlay">
                                        <div class="buttons">
                                            <a rel="gallery" class="fancybox" href="images/portfolio/item-6.jpg">Demo</a>
                                            <a target="_blank" href="single-portfolio.html">Details</a>
                                        </div>
                                    </div>
                                </div>
                                <figcaption>
                                <h4>
                                <a href="#">
                                   ПРЕДСТАВИТЕЛЬСТВО В ОРГАНАХ ГОСУДАРСТВЕННОЙ ВЛАСТИ
                                </a>
                                </h4>
                                <p>
                                    Услуги
                                </p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
            </section> <!-- #works -->
<%--    <section id="service-page" class="pages service-page">
        <div class="service_area">
            <div class="container">
                <div class="row">
                    <div class="service_section wow bounceInLeft animated animated" style="visibility: visible; animation-name: bounceInLeft;">
                        <div class="col-xs-3">
                            <div class="single_service">
                                <div class="ico"><i class="fa fa-mobile"></i></div>
                                <h2>Fully responsive</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore
                                </p>
                            </div>
                        </div>

                        <div class="col-xs-3 ">
                            <div class="single_service">
                                <div class="ico"><i class="fa fa-code"></i></div>
                                <h2>Customizable file</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore
                                </p>
                            </div>
                        </div>

                        <div class="col-xs-3">
                            <div class="single_service">
                                <div class="ico"><i class="fa fa-paint-brush"></i></div>
                                <h2>Superb design</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore
                                </p>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="single_service">
                                <div class="ico"><i class="fa fa-heart-o"></i></div>
                                <h2>Made with love</h2>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore
                                </p>
                            </div>
                        </div>


                    </div>
                </div>

            </div>                        
        </div>
    </section>--%>  <%--  /*Parallax*/--%>
    <section id="project-count" class="section-padding">
        <div data-velocity="-.3" class="parallax-bg"></div>
        <div class="parallax-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 wow animated fadeInLeft">
                    <div class="single-count">
                        <i class="fa fa-plane"></i>
                        <h2><span class="counter">3450</span></h2>
                        <p>Projects complete</p>
                    </div>
                </div>
                <!--project col end-->
                <div class="col-md-3 col-sm-6 wow animated fadeInLeft">
                    <div class="single-count">
                        <i class="fa fa-user"></i>
                        <h2><span class="counter">345</span>+</h2>
                        <p>Happy Clients</p>
                    </div>
                </div>
                <!--project col end-->
                <div class="col-md-3 col-sm-6 wow animated fadeInRight">
                    <div class="single-count">
                        <i class="fa fa-clock-o"></i>
                        <h2><span class="counter">6000</span></h2>
                        <p>Working Hours</p>
                    </div>
                </div>
                <!--project col end-->
                <div class="col-md-3 col-sm-6 wow animated fadeInRight"">
                    <div class="single-count">
                        <i class="fa fa-clock-o"></i>
                        <h2><span class="counter">923</span></h2>
                        <p>Job opening</p>
                    </div>
                </div>
                <!--project col end-->
            </div>
        </div>
    </section>
      <%--  /*Parallax END*/--%>
    <section class="features">
        <div class="container">
            <div class="section-heading">
                <h2 class="title wow animated fadeInDown" data-wow-delay=".3s">Нас выбирают</h2>
                <p>
                    Мы ежедневно стремимся улучшать качество и виды наших юридических услуг. Принципы нашей компании - профессионализм, честность, открытость и доверительные, партнерские отношения с нашими клиентами.
                </p>
            </div>

            <div class="row">
                <div class="col-sm-4 wow animated fadeInLeft">
                    <div class="space90 "></div>
                    <ul class="features-left">
                        
                        <li>
                            <i class="lnr lnr-rocket"></i>
                            <h3>СКОРОСТЬ</h3>
                            <p>Качественно в срок</p>
                        </li>
                        <li>
                            <i class="lnr lnr-user"></i>
                            <h3>КОНФИДЕНЦИАЛЬНОСТЬ</h3>
                            <p>Информация клиента надежно защищена</p>
                        </li>
                        <li>
                            <i class="lnr lnr-hourglass"></i>
                            <h3>Опыт</h3>
                            <p>14 лет на рынке юридических услуг слаженная команда профессионалов</p>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-4 col-sm-push-4 wow animated fadeInRight">
                    <div class="space90"></div>
                    <ul class="features-right">
                        <li>
                            <i class="lnr lnr-thumbs-up"></i>
                            <h3>Индивидуальный подход</h3>
                            <p>Работаем на результат</p>
                        </li>
                        <li>
                            <i class="lnr lnr-magic-wand"></i>
                            <h3>ПРОЗРАЧНОСТЬ</h3>
                            <p>Основа развития нашей компании</p>
                        </li>
                        <li>
                            <i class="lnr lnr-poop"></i>
                            <h3>ЛОЯЛЬНЫЕ ТАРИФЫ</h3>
                            <p>Подберем оптимальный</p>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-4 col-sm-pull-4">
                    <div>
                        <img src="Content\images\Prezidium\1_Фемида.png" class="img-responsive center-block" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--<section>
        <div class="row wow animated fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;">
            <div class="col-md-12">
                <div class="partner-list owl-carousel owl-theme" style="opacity: 1; display: block;">

                    <div class="owl-wrapper-outer">
                        <div class="owl-wrapper" style="width: 4104px; left: 0px; display: block;">
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=84" alt="">
                                </div>
                            </div>
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=83" alt="">
                                </div>
                            </div>
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=82" alt="">
                                </div>
                            </div>
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=81" alt="">
                                </div>
                            </div>
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=80" alt="">
                                </div>
                            </div>
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=90" alt="">
                                </div>
                            </div>
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=87" alt="">
                                </div>
                            </div>
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=88" alt="">
                                </div>
                            </div>
                            <div class="owl-item" style="width: 228px;">
                                <div class="single-partner">
                                    <img class="img-responsive" src="http://unsplash.it/550/420?image=89" alt="">	<%--	<img src="http://unsplash.it/550/420?image=885" data-full="http://unsplash.it/1100/840?image=885" class="m-p-g__thumbs-img" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
        <!--partner list end-->
<%--    <section id="contact">

        <div class="container-wrapper">
            <div id="google-map" style="height: 550px; width: 100%;" data-latitude="49.9908807" data-longitude="36.2134152"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="contact-form">
                            <h3>Contact Info</h3>

                            <address>
                                <strong>Контакты:</strong><br>
                                <p>
                                    +38 (057) 780 28 83<br>
                                    +38 (099) 421 57 97<br>
                                    +38 (099) 224 22 97
                                    <br>
                                    <br>
                                    <span style="font-weight: bold">Главный офис:</span>
                                    <br>
                                    г. Харьков<br>
                                    ул. Коцарская 40.
                                    <br>
                                    <span class="glyphicon glyphicon-envelope"></span>Е-mail: prezidium.com.ua@gmail.com
                                    <br>
                                    <br>
                                    <span class="glyphicon glyphicon-time" style="font-size: 22px;"></span>
                                    <br>
                                    <span style="font-weight: bold">Время работы:</span>
                                    <br>
                                    Понедельник-Пятница: 9.00-18.00
                                    Суббота: 10.00-16.00
                                    <br>
                                    Воскресенье: <span style="color: red">Выходной</span>
                                </p>
                                <abbr title="Phone">P:</abbr>
                                (123) 456-7890
                           
                            </address>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        jQuery(function ($) {

            //Google Map
            var latitude = $('#google-map').data('latitude');
            var longitude = $('#google-map').data('longitude');
            function initialize_map() {
                var myLatlng = new google.maps.LatLng(latitude, longitude);
                var mapOptions = {
                    zoom: 16,
                    scrollwheel: false,
                    center: myLatlng
                };
                var map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    draggable: true,
                    animation: google.maps.Animation.DROP
                });
                marker.addListener('click', toggleBounce);
                function toggleBounce() {
                    if (marker.getAnimation() !== null) {
                        marker.setAnimation(null);
                    } else {
                        marker.setAnimation(google.maps.Animation.BOUNCE);
                    }
                }


            }
           
            google.maps.event.addDomListener(window, 'load', initialize_map);

        });
    </script>

    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>--%>
    <%--    <script src="Scripts/jquery.sticky.js"></script>--%>
    <!--easying scroll effect-->
    <script src="Scripts/jquery.easing.1.3.min.js"></script>
    <!--owl carousel-->
    <%--Нужно для паралакса--%>
    <script src="Scripts/owl.carousel.min.js"></script>
    <!--wow animation-->
    <script src="Scripts/wow.min.js"></script>
    <!--parallax-->
    <script src="Scripts/jquery.scrolly.js"></script>

    <!--custom scrollbar-->
    <%--    <script src="Scripts/jquery.nicescroll.min.js"></script>--%>
    <script src="Scripts/custom.js"></script>
    <script src="https://cdn.linearicons.com/free/1.0.0/svgembedder.min.js"></script>
</asp:content>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.util.ResourceBundle" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<% 	ResourceBundle resource = ResourceBundle.getBundle("ApplicationResources_fa"); %>
<html class="no-js" lang="fa">
<head>
    <!--<metaTags>-->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>سامانه رزرواسیون سراج</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--</metaTags>-->

    <!--<stylesheer>-->
    <link rel="icon" href="app/images/logo.png" type="image/png">
    <link type="text/css" rel="stylesheet" href="app/assets/css/bootstrap-rtl.css">
    <link type="text/css" rel="stylesheet" href="node_modules/persian-bootstrap-daterangepicker/daterangepicker.css">
    <link type="text/css" rel="stylesheet" href="semantic/dist/semantic.rtl.css">
    <link type="text/css" rel="stylesheet" href="node_modules/slick-carousel/slick/slick.css">
    <link type="text/css" rel="stylesheet" href="node_modules/slick-carousel/slick/slick-theme.css">
    <link type="text/css" rel="stylesheet" href="node_modules/jquery-ui/themes/base/all.css">
    <link type="text/css" rel="stylesheet" href="app/css/styles-rtl.css">
    <!--</stylesheer>-->

    <!--<javascript>-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsT0LEBibZ1Svifpe_vzbRNDIvOO7PIlk&language=fa&libraries=places"></script>
    <script type="text/javascript" src="node_modules/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="node_modules/jquery-ui/ui/widget.js"></script>
    <script type="text/javascript" src="node_modules/jquery-ui/ui/widgets/mouse.js"></script>
    <script type="text/javascript" src="node_modules/jquery-ui/ui/widgets/slider.js"></script>
    <script type="text/javascript" src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="node_modules/moment/moment.js"></script>
    <script type="text/javascript" src="node_modules/moment-jalaali/build/moment-jalaali.js"></script>
    <script type="text/javascript" src="node_modules/persian-bootstrap-daterangepicker/daterangepicker-persian.js"></script>
    <script type="text/javascript" src="semantic/dist/semantic.min.js"></script>
    <script type="text/javascript" src="node_modules/slick-carousel/slick/slick.min.js"></script>
    <script type="text/javascript" src="app/js/main.js"></script>
    <!--</javascript>-->
</head>
<body>

<!--<slider for front page> اسلایدر بالای صفحه نخست -->
<div id="front-slider">
    <div class="sliders">
        <div class="slide" style="background-image: url('app/images/frontHeaderBG.jpg')"></div>
        <div class="slide" style="background-image: url('app/images/frontHeaderBG1.jpg')"></div>
        <div class="slide" style="background-image: url('app/images/frontHeaderBG2.jpg')"></div>
        <div class="slide" style="background-image: url('app/images/frontHeaderBG3.jpg')"></div>
        <div class="slide" style="background-image: url('app/images/frontHeaderBG4.jpg')"></div>
        <div class="slide" style="background-image: url('app/images/frontHeaderBG5.jpg')"></div>
        <div class="slide" style="background-image: url('app/images/frontHeaderBG6.jpg')"></div>
        <div class="slide" style="background-image: url('app/images/frontHeaderBG7.jpg')"></div>
    </div>
</div>
<!--</slider for front page>-->


<div id="site-header" style="background-image: url('app/images/headerColorBG.png')">

    <!--<topMenu>-->
    <header class="ui container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#">
                <img src="app/images/logo.png">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="http://localhost/~farzad/seraj/hotels.html">رزرو هتل <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">بلیط هواپیما</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">همکاران تجاری</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">قوانین و مقررات رزرو</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">راهنمای سایت</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-warning btn-sm follow-up" href="#">پیگیری رزرو</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav float-md-right">
                    <!--<li class="nav-item active">-->
                    <!--<div class="dropdown">-->
                    <!--<button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="language-switcher" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">-->

                    <!--</button>-->
                    <!--<div class="dropdown-menu" aria-labelledby="language-switcher">-->
                    <!--<a class="dropdown-item" href="#">انگلیسی</a>-->
                    <!--</div>-->
                    <!--</div>-->
                    <!--</li>-->
                    <li class="nav-item">
                        <a id="user-login-register" class="nav-link login-register" href="#">ورود/ثبت نام</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <button class="btn btn-sm dropdown-toggle" type="button" id="currency-switcher" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span>IRR</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="currency-switcher">
                                <a class="dropdown-item" href="#">Dollar</a>
                                <a class="dropdown-item" href="#">Euro</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!--</topMenu>-->

    <!--<pageTitle>-->
    <div class="ui container page-title">
        <div class="contents">
            <h1 class="header">سیستم رزرواسیون هتل</h1>
            <h2 class="description">با بیش از ۲۳۷ هتل کاملا آنلاین در سراسر ایران</h2>
        </div>
    </div>
    <!--</pageTitle>-->

    <!--<searchBlock>-->
    <div id="search-section" class="ui container">
        <div id="search-box">
            <div class="ui top attached tabular menu tab-menu">
                <a class="item active" data-tab="hotel-tab">رزرو هتل</a>
                <a class="item" data-tab="flight-tab">رزرو پرواز</a>
            </div>
            <div class="ui bottom attached tab segment active" data-tab="hotel-tab">
                <form class="ui form">
                    <div class="ui stackable doubling four column centered grid">
                        <div id="search-value" class="five wide column">
                            <div class="ui left icon input fluid">
                                <i class="search icon"></i>
                                <select class="ui search dropdown search-value" name="destination">
                                    <option value="">جستجوی مقصد (شهر یا هتل)</option>
                                    <option value="AL">Alabama</option>
                                    <option value="AK">Alaska</option>
                                    <option value="AZ">Arizona</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="CA">California</option>
                                    <option value="CO">Colorado</option>
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="DC">District Of Columbia</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="HI">Hawaii</option>
                                    <option value="ID">Idaho</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IN">Indiana</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NV">Nevada</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="OH">Ohio</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="OR">Oregon</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="TX">Texas</option>
                                    <option value="UT">Utah</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WA">Washington</option>
                                    <option value="WV">West Virginia</option>
                                    <option value="WI">Wisconsin</option>
                                    <option value="WY">Wyoming</option>
                                </select>
                            </div>
                        </div>
                        <div class="six wide column">
                            <div type="text" class="date-range" id="search-date">
                                <div class="departure-section">
                                    <div class="date"></div>
                                    <div class="day"></div>
                                    <input class="date-from" type="hidden" name="dateFrom" value="">
                                </div>
                                <div class="arrival-section">
                                    <div class="date"></div>
                                    <div class="day"></div>
                                    <input class="date-to" type="hidden" name="dateTo" value="">
                                </div>
                            </div>
                        </div>
                        <div class="three wide column">
                            <div type="text" id="search-passengers">
                                <i class="users icon"></i>
                                <div class="contents">
                                    <div class="passengers-value">
                                        <span class="adult-count">1</span> بزرگسال<span> - </span><span class="child-count">0</span> کودک
                                    </div>
                                    <div class="room-value"><span class="room-count">1</span> اتاق</div>

                                    <input class="adult-count-input" type="hidden" name="adult" value="1">
                                    <input class="child-count-input" type="hidden" name="child" value="0">
                                    <input class="room-count-input" type="hidden" name="room" value="1">
                                </div>
                            </div>
                            <div class="ui passenger popup transition hidden">
                                <div class="passenger-content">
                                    <div class="ui three column centered grid parent-section">
                                        <div class="column">
                                            <div class="mini ui blue icon button add-btn">
                                                <i class="plus icon"></i>
                                            </div>
                                        </div>
                                        <div class="column">
                                            <h3 class="label"><span class="room-count">1</span> اتاق </h3>
                                        </div>
                                        <div class="column">
                                            <div class="mini ui icon button minus-btn">
                                                <i class="minus icon"></i>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="ui divider"></div>

                                    <div class="ui three column centered grid parent-section">
                                        <div class="column">
                                            <div class="mini ui blue icon button add-btn">
                                                <i class="plus icon"></i>
                                            </div>
                                        </div>
                                        <div class="column">
                                            <h3 class="label"><span class="adult-count">1</span> بزرگسال </h3>
                                        </div>
                                        <div class="column">
                                            <div class="mini ui icon button minus-btn">
                                                <i class="minus icon"></i>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="ui divider"></div>

                                    <div class="ui three column centered grid parent-section">
                                        <div class="column">
                                            <div class="mini ui blue icon button add-btn">
                                                <i class="plus icon"></i>
                                            </div>
                                        </div>
                                        <div class="column">
                                            <h3 class="label"><span class="child-count">0</span> کودک </h3>
                                        </div>
                                        <div class="column">
                                            <div class="mini ui icon button minus-btn">
                                                <i class="minus icon"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="two wide column">
                            <button type="submit" class="ui yellow button fluid search-submit">جستجو</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="ui bottom attached tab segment" data-tab="flight-tab">
                <form class="ui form">
                    <div class="field">
                        <label>First Name</label>
                        <input type="text" name="first-name">
                    </div>
                    <div class="field">
                        <label>Last Name</label>
                        <input type="text" name="last-name">
                    </div>
                    <div class="ui checkbox">
                        <input type="checkbox" tabindex="0" class="hidden">
                        <label>I agree to the Terms and Conditions</label>
                    </div>
                    <button class="ui button" type="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <!--</searchBlock>-->

    <!--<extraLinks> لینکهای موجود در زیر بلاک جستجو -->
    <div id="extra-section" class="custom-section">
        <div class="ui container">
            <div class="header-section">
                <h2 class="header">با ما متمایز سفر کنید</h2>
                <h2 class="description">سراج، ارائه دهنده متفاوت‌ترین خدمات در حوضه رزرواسیون هتل</h2>
            </div>

            <div class="ui doubling four column grid extra-links">
                <div class="column price">
                    <a href="#">تضمین کمترین قیمت</a>
                </div>
                <div class="column cancel">
                    <a href="#">کنسلی و استرداد آنی</a>
                </div>
                <div class="column reserve">
                    <a href="#">رزرو کاملا آنلاین هتل‌ها</a>
                </div>
                <div class="column support">
                    <a href="#">پشتیبانی ۲۴ ساعته</a>
                </div>
            </div>
        </div>
    </div>
    <!--</extraLinks>-->
</div>

<div id="main-content">

    <!--<specialOffers>-->
    <div id="offers-section" class="custom-section">
        <div class="ui container content">
            <h2 class="header">بهترین و بیشترین تخفیف‌ها را در سراج جستجو کنید</h2>

            <div class="ui stackable doubling three column centered grid offers">
                <div class="four wide column">
                    <div class="column-contents">
                        <span class="ui yellow ribbon label">تا ۵۰٪ تخفیف</span>
                        <img class="ui medium rounded image" src="app/images/offer01.png">
                        <div class="column-texts">
                            <p>هتل هویزه مشهد</p>
                            <span>هتل لوکس با امکانات منحصر به فرد</span>
                        </div>
                    </div>
                </div>
                <div class="four wide column">
                    <div class="column-contents">
                        <span class="ui yellow ribbon label">تا ۶۵٪ تخفیف</span>
                        <img class="ui medium rounded image" src="app/images/offer02.png">
                        <div class="column-texts">
                            <p>هتل هویزه مشهد</p>
                            <span>هتل لوکس با امکانات منحصر به فرد</span>
                        </div>
                    </div>
                </div>
                <div class="eight wide column">
                    <div class="column-contents">
                        <span class="ui yellow ribbon label">تا ۳۰٪ تخفیف</span>
                        <img class="ui medium rounded image" src="app/images/offer03.png">
                        <div class="column-texts">
                            <p>هتل هویزه مشهد</p>
                            <span>هتل لوکس با امکانات منحصر به فرد</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="ui stackable doubling three column centered grid offers">
                <div class="eight wide column">
                    <div class="column-contents">
                        <span class="ui yellow ribbon label">تا ۴۵٪ تخفیف</span>
                        <img class="ui medium rounded image" src="app/images/offer11.png">
                        <div class="column-texts">
                            <p>هتل هویزه مشهد</p>
                            <span>هتل لوکس با امکانات منحصر به فرد</span>
                        </div>
                    </div>
                </div>
                <div class="four wide column">
                    <div class="column-contents">
                        <span class="ui yellow ribbon label">تا ۵۰٪ تخفیف</span>
                        <img class="ui medium rounded image" src="app/images/offer12.png">
                        <div class="column-texts">
                            <p>هتل هویزه مشهد</p>
                            <span>هتل لوکس با امکانات منحصر به فرد</span>
                        </div>
                    </div>
                </div>
                <div class="four wide column">
                    <div class="column-contents">
                        <span class="ui yellow ribbon label">تا ۳۰٪ تخفیف</span>
                        <img class="ui medium rounded image" src="app/images/offer13.png">
                        <div class="column-texts">
                            <p>هتل هویزه مشهد</p>
                            <span>هتل لوکس با امکانات منحصر به فرد</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--</specialOffers>-->

    <!--<commentsAnimation>-->
    <div id="phone-section">
        <div class="phone-in-hand">
            <!--Phone Picture in Hand-->
            <div class="messages m-radius">
                <div class="user-message message">
                    <img src="app/images/phoneUser03.png">
                    <p>
                        <strong>پیام حروفچین</strong>
                        لورم ایپسوم متن ساختگی با تولنامهدهای متنوع با هدف بهبود ابزارهای کزیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="admin-message message">
                    <img src="app/images/phoneUser04.png">
                    <p>
                        <strong>فرزاد مهانیان</strong>
                        لورم ایپسوم متن ساختگی با بلکه روزنامه و مجکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کار زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="user-message message">
                    <img src="app/images/phoneUser01.png">
                    <p>
                        <strong>پیام حروفچین</strong>
                        لورم ایپسوم امعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="admin-message message">
                    <img src="app/images/phoneUser02.png">
                    <p>
                        <strong>فرزاد مهانیان</strong>
                        لورم ایپسوم متننان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="user-message message">
                    <img src="app/images/phoneUser01.png">
                    <p>
                        <strong>پیام حروفچین</strong>
                        لورم ایپسوم متن ساختگی با تولنامهدهای متنوع با هدف بهبود ابزارهای کزیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="admin-message message">
                    <img src="app/images/phoneUser05.png">
                    <p>
                        <strong>فرزاد مهانیان</strong>
                        لورم ایپسوم متن ساختگی با تولید سادگی نامفهوممجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="user-message message">
                    <img src="app/images/phoneUser03.png">
                    <p>
                        <strong>پیام حروفچین</strong>
                        لورم ایپسوم متن ساختگی با تولنامهدهای متنوع با هدف بهبود ابزارهای کزیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="admin-message message">
                    <img src="app/images/phoneUser04.png">
                    <p>
                        <strong>فرزاد مهانیان</strong>
                        لورم ایپسوم متن ساختگی با بلکه روزنامه و مجله درهبود ابزارهای کاربردی می باشد. کتابهای زیادی درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="user-message message">
                    <img src="app/images/phoneUser01.png">
                    <p>
                        <strong>پیام حروفچین</strong>
                        لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متاخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
                <div class="admin-message message">
                    <img src="app/images/phoneUser05.png">
                    <p>
                        <strong>فرزاد مهانیان</strong>
                        لورم ایپسوم متن ساختگی با شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزا
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!--</commentsAnimation>-->

    <!--<hotelsSlider>-->
    <div id="hotels-section" class="mtb50">
        <div class="header-section">
            <h2 class="header">گروه هتل‌ها</h2>
            <h2 class="description">سراج، ارائه دهنده متفاوت‌ترین خدمات در حوضه رزرواسیون هتل</h2>
        </div>

        <div class="hotels-slider">
            <div class="hotel-slide">
                <img src="app/images/hotel01.png">
                <div class="hotel-content">
                    <p>تهران</p>
                    <span>پایتخت ایران</span>
                </div>
            </div>

            <div class="hotel-slide">
                <img src="app/images/hotel02.png">
                <div class="hotel-content">
                    <p>تبریز</p>
                    <span>پایتخت فرهنگی جهان اسلام</span>
                </div>
            </div>

            <div class="hotel-slide">
                <img src="app/images/hotel03.png">
                <div class="hotel-content">
                    <p>شیراز</p>
                    <span>تاریخ و تمدن ایران</span>
                </div>
            </div>

            <div class="hotel-slide">
                <img src="app/images/hotel01.png">
                <div class="hotel-content">
                    <p>تهران</p>
                    <span>پایتخت ایران</span>
                </div>
            </div>

            <div class="hotel-slide">
                <img src="app/images/hotel02.png">
                <div class="hotel-content">
                    <p>تبریز</p>
                    <span>پایتخت فرهنگی جهان اسلام</span>
                </div>
            </div>
        </div>
    </div>
    <!--</hotelsSlider>-->

    <!--<advantagesList>-->
    <div id="advantages-section" class="mt100">
        <div class="header-section">
            <h2 class="header">مزایای رزرو اینترنتی هتل</h2>
            <h2 class="description">سراج، ارائه دهنده متفاوت‌ترین خدمات در حوضه رزرواسیون هتل</h2>
        </div>

        <div class="ui container advantages centered grid">
            <ul>
                <li class="iran">
                    <p>امکان رزرو هتل در سراسر ایران از جمله رزرو هتل کیش، رزرو هتل مشهد، رزرو هتل تهران، رزرو هتل شیراز، رزرو هتل اصفهان و ...</p>
                </li>
                <li class="price">
                    <p>جستجوی هتل بر اساس قیمت، امکان رزرو هر گونه هتل ارزان قیمت و اقتصادی تا هتل لوکس و گران قیمت را مقدور ساخته است</p>
                </li>
                <li class="ranking">
                    <p>جستجو و رزرو هتل بر اساس رتبه (ستاره) که شامل: هتل‌های پنج ستاره و لوکس است</p>
                </li>
                <li class="location">
                    <p>جستجو و رزرو هتل بر اساس موقعیت: از جمله موارد مهم و ضروری در انتخاب و رزرو هتل موقیت و مکان هتل می‌باشد</p>
                </li>
                <li class="type">
                    <p>امکان رزرو هر گونه هتل مانند هتل اپارتمان، متل، ریزورت بر اساس نیاز و خواسته مشتری فراهم شده است</p>
                </li>
            </ul>
        </div>
    </div>
    <!--</advantagesList>-->
</div>

<footer id="footer">

    <!--<addressPhone>-->
    <div class="footer-top">
        <div class=" ui container">
            <div class="ui stackable two column grid">
                <div class="column left floated">
                    <p>تهران، خیابان بهشتی، خیابان خالد استامبولی، کوچه ۲۳، پلاک ۷ | کدپستی ۱۲۳۴۵۶۷۸۹۰</p>
                </div>
                <div class="column right floated">
                    <p>تلفن: ۴۳۴۵۶ | ۳۴۵۷۳۲۶۷</p>
                </div>
            </div>
        </div>
    </div>
    <!--</addressPhone>-->

    <!--<subscribe&social>-->
    <div class="footer-middle">
        <div class="ui container">
            <div class="ui stackable two column grid">
                <div class="column subscribe-section">
                    <h2 class="header">
                        عضویت در خبرنامه ایمیلی:
                    </h2>
                    <div class="ui fluid action input">
                        <input type="text" placeholder="پست الکترونیکی خود را وارد کنید...">
                        <button class="ui yellow button">عضویت</button>
                    </div>
                    <p class="description">برای عضویت در خبرنامه پیامکی، عدد ۵ را به شماره ۴۶۷۳۳۵۶ پیامک کنید</p>
                </div>
                <div class="column social-section">
                    <ul>
                        <li class="linkedin">
                            <a href="#">
                                <img src="app/images/socialLinkedin.png">
                            </a>
                        </li>
                        <li class="google-plus">
                            <a href="#">
                                <img src="app/images/socialGooglePlus.png">
                            </a>
                        </li>
                        <li class="twitter">
                            <a href="#">
                                <img src="app/images/socialTwitter.png">
                            </a>
                        </li>
                        <li class="instagram">
                            <a href="#">
                                <img src="app/images/socialInstagram.png">
                            </a>
                        </li>
                        <li class="facebook">
                            <a href="#">
                                <img src="app/images/socialFacebook.png">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--</subscribe&social>-->

    <!--<description&links>-->
    <div class="footer-bottom">
        <div class="ui container">
            <div class="ui stackable two column centered grid">
                <div class="column">
                    <p>
                        لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در زبان فارسی ایجادنیای موجود طراحی اساسا مورد استفاده قرار گیرد.
                    </p>
                </div>
                <div class="column">
                    <div class="ui three column centered grid">
                        <div class="column">
                            <h2 class="header">عنوان ۱</h2>
                            <ul>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                            </ul>
                        </div>
                        <div class="column">
                            <h2 class="header">عنوان ۲</h2>
                            <ul>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                            </ul>
                        </div>
                        <div class="column">
                            <h2 class="header">عنوان ۳</h2>
                            <ul>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                                <li><a href="#">لورم ایپسوم متن ساختگی</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--</description&links>-->

    <!--<copyright>-->
    <div class="copyright">
        <div class="ui container">
            <p>تمامی حقوق مادی و معنوی این سایت متعلق به شرکت <a href="#">سراج</a> می باشد.</p>
        </div>
    </div>
    <!--</copyright>-->
</footer>


<!--<login&registerPopup>-->
<div class="ui modal user-login-register m-radius">
    <div class="ui stackable two column grid m0">
        <div class="six wide column sign-in p30">
            <h2 class="header">ورود به سایت</h2>
            <h3 class="description">برای استفاده از خدمات باشگاه سفر ONE و مدیریت حساب کاربری خود وارد سایت شوید.</h3>

            <form class="ui equal width form separated-inputs">
                <div class="fields">
                    <div class="field">
                        <label for="userUsername">نام کاربری</label>
                        <!--<input id="userUsername" type="text" autocomplete="off">-->
                        <input id="userUsername" type="text" tabindex="0" autocomplete="off" autofocus="" autocapitalize="off" autocorrect="off">
                    </div>
                </div>
                <div class="fields">
                    <div class="field">
                        <label for="userPassword">کلمه عبور</label>
                        <!--<input id="userPassword" type="password" autocomplete="off">-->
                        <input id="userPassword" type="password" tabindex="1" autocomplete="off" autofocus="" autocapitalize="off" autocorrect="off">
                    </div>
                </div>
                <div class="fields ptb20">
                    <div class="ui checkbox">
                        <input type="checkbox" tabindex="0" class="hidden">
                        <label>مرا به خاطر بسپار</label>
                    </div>
                </div>
                <div class="form-btn">
                    <button class="ui yellow right floated button m-styled m-wide-btn-150" type="submit">ورود</button>
                </div>
                <div class="forget-pass">
                    <a href="#">رمز عبور خود را فراموش کرده‌ام :(</a>
                </div>
            </form>
        </div>
        <div class="ten wide column register p30">
            <h2 class="header">ثبت نام در سایت</h2>
            <h3 class="description">برای عضویت در باشگاه سفر ONE مشخصات خود را وارد نمایید.</h3>

            <form class="ui equal width form separated-inputs">
                <div class="fields">
                    <div class="field">
                        <label for="userFirstName">نام و نام خانوادگی</label>
                        <input id="userFirstName" type="text">
                    </div>
                </div>
                <div class="fields">
                    <div class="field">
                        <label for="userEmail">آدرس ایمیل</label>
                        <input id="userEmail" type="email">
                    </div>
                </div>
                <div class="fields">
                    <div class="field">
                        <label for="userMobile">تلفن همراه</label>
                        <input id="userMobile" type="email">
                    </div>
                </div>
                <div class="form-btn">
                    <button class="ui yellow right floated button m-styled m-wide-btn-150" type="submit">ثبت نام</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--<login&registerPopup>-->

</body>
</html>

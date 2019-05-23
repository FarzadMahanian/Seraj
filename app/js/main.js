$ = jQuery;

function correctPrices() {
    var separatePrices = $('.sep-price');
    $.each(separatePrices, function () {
        $(this).html(numeral($(this).html()).format('0,0'));
    });
}

$(document).ready(function () {
    var today = new Date();

    var datePicker = $('div.date-range');
    $(this).find('.departure-section .date').html(moment().format('jD jMMMM jYYYY'));
    $(this).find('.departure-section .day').html(moment().format('dddd'));
    $(this).find('.arrival-section .date').html(moment().add(1, 'day').format('jD jMMMM jYYYY'));
    $(this).find('.arrival-section .day').html(moment().add(1, 'day').format('dddd'));
    datePicker.persiandaterangepicker({
        rtl: true,
        opens: 'center',
        autoApply: true,
        minDate: today,
        autoUpdateInput: false
    });
    datePicker.on('apply.daterangepicker', function (ev, picker) {
        $(this).find('.departure-section .date').html(picker.startDate.format('jD jMMMM jYYYY'));
        $(this).find('.departure-section .day').html(picker.startDate.format('dddd'));
        $(this).find('.arrival-section .date').html(picker.endDate.format('jD jMMMM jYYYY'));
        $(this).find('.arrival-section .day').html(picker.endDate.format('dddd'));

        console.log(picker.startDate);

        $(this).find('.departure-section input.date-from').val(picker.startDate.valueOf());
        $(this).find('.arrival-section input.date-to').val(picker.endDate.valueOf());
    });
    $('.daterangepicker.dropdown-menu').removeClass('ltr');
    $('.daterangepicker.dropdown-menu').addClass('rtl');

    $('input.date-single').persiandaterangepicker({
        opens: 'center',
        singleDatePicker: true,
        showDropdowns: true,
        minYear: 1901,
        maxYear: parseInt(moment().format('YYYY'),10)
    });

    $('#front-slider, #front-slider div').css('height', $('#site-header').innerHeight());

    $('#front-slider .sliders').slick({
        rtl: true,
        arrows: false,
        dots: false,
        infinite: true,
        speed: 500,
        fade: true,
        cssEase: 'linear',
        autoplay: true,
        autoplaySpeed: 7000,
        pauseOnHover: false
    });

    $('.hotels-slider').slick({
        rtl: true,
        arrows: false,
        dots: true,
        infinite: true,
        speed: 300,
        slidesToShow: 3,
        slidesToScroll: 3,
        centerMode: true,
        autoplay: true,
        autoplaySpeed: 7000,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false
                }
            },
        ]
    });

    function changePassenger(element, role) {
        var passengersSearch = $('#search-passengers');
        var passengersContent = $('.passenger-content .ui.grid');

        var value = $(element).parents('.parent-section').find('.label');
        var elementClass = $(value).find('span').attr(('class'));
        var count = $(passengersSearch).find('.' + elementClass).html();
        if (role == 'add') {
            if (count >= 0) {
                $(passengersSearch).find('.' + elementClass).html(parseInt(count) + 1);
                $(passengersContent).find('.' + elementClass).html(parseInt(count) + 1);

                $(passengersSearch).find('.' + elementClass + '-input').val(parseInt(count) + 1)
            }
        } else if (role == 'minus') {
            if (elementClass == 'child-count') {
                if (count > 0) {
                    $(passengersSearch).find('.' + elementClass).html(parseInt(count) - 1);
                    $(passengersContent).find('.' + elementClass).html(parseInt(count) - 1);

                    $(passengersSearch).find('.' + elementClass + '-input').val(parseInt(count) - 1)
                }
            } else {
                if (count > 1) {
                    $(passengersSearch).find('.' + elementClass).html(parseInt(count) - 1);
                    $(passengersContent).find('.' + elementClass).html(parseInt(count) - 1);

                    $(passengersSearch).find('.' + elementClass + '-input').val(parseInt(count) - 1)
                }
            }
        } else {
            console.log('Nothing to do with change passengers!');
        }
    }

    var passengers = $('.passenger-content .ui.grid');
    $.each(passengers, function () {
        $(this).find('.add-btn').click(function () {
            changePassenger(this, 'add');
        });

        $(this).find('.minus-btn').click(function () {
            changePassenger(this, 'minus');
        });
    });

    var hotelRooms = $('.hotel-rooms-select');
    $.each(hotelRooms, function () {
        var element = $(this);
        $(this).find('.add-btn').click(function () {
            var value = parseInt($(element).find('.rooms-value').attr('data-text'));
            if (value >= 0 && value < 10) {
                $(element).find('.rooms-value').attr('data-text', value + 1);
            }
        });

        $(this).find('.minus-btn').click(function () {
            var value = parseInt($(element).find('.rooms-value').attr('data-text'));
            if (value > 0 && value <= 10) {
                $(element).find('.rooms-value').attr('data-text', value - 1);
            }
        });
    });



    var hotelVotes = $('.hotel-vote-slider');
    $.each(hotelVotes, function () {
        $(this).slider({
            range: "max",
            min: 1,
            max: 10,
            value: 8,
            slide: function( event, ui ) {
                $(this).parent().find('.vote-amount').val(11 - ui.value);
                $(this).parent().find('.vote-amount').attr('value', 11 - ui.value);
            }
        });
        $(this).parent().find('.vote-amount').val(11 - $(this).slider('value'));
        $(this).parent().find('.vote-amount').attr('value', 11 - $(this).slider('value'));
    });

    if ($('#slider-range').length > 0) {
        $("#slider-range").slider({
            range: true,
            min: 0,
            animate: true,
            max: 5000000,
            values: [0, 5000000],
            slide: function (event, ui) {
                var str = 'از ';
                str += ui.values[0];
                str += ' تومان تا ';
                str += ui.values[1];
                str += ' تومان';
                $("#amount").val(str);

            }
        });
        var str = 'از ';
        str += $("#slider-range").slider("values", 0);
        str += ' تومان تا ';
        str += $("#slider-range").slider("values", 1);
        str += ' تومان';
        $("#amount").val(str);
    }

    if ($('#google-map-empty').length > 0) {
        var mapProp = {
            center: new google.maps.LatLng(51.508742, -0.120850),
            zoom: 5,
        };
        var map = new google.maps.Map(document.getElementById('google-map-empty'), mapProp);
    }

    if ($('#google-map').length > 0) {

        var markers = [];
        var elements = $('.google-map-elements');
        $.each(elements, function () {
            if ($(this).attr('type') == 'hotel') {
                markers.push({
                    'title': $(this).find('.header').html(),
                    'lat': $(this).attr('lat'),
                    'lng': $(this).attr('lng'),
                    'imageURL': $(this).find('.image').map(function (v, i) {
                        return $(this).css('background-image').replace(/url\(|\)/g, '');
                    }).get().toString(),
                    'isOnline': true,
                    'stars': $(this).find('.ui.rating').attr('data-rating'),
                    'description': $(this).find('.description').html(),
                    'address': $(this).find('.address').html()
                });
            }
        });

        var mapCanvas = document.getElementById('google-map');
        var myCenter = new google.maps.LatLng(markers[0].lat, markers[0].lng);

        var mapProp = {
            center: myCenter,
            zoom: 5,
            panControl: false,
            zoomControl: true,
            mapTypeControl: false,
            scaleControl: false,
            streetViewControl: false,
            overviewMapControl: false,
            rotateControl: true,
            scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(mapCanvas, mapProp);
        var infowindow = new google.maps.InfoWindow();
        var marker, i;
        var bounds = new google.maps.LatLngBounds();

        for (i = 0; i < markers.length; i++) {
            marker = new google.maps.Marker({
                position: new google.maps.LatLng(markers[i].lat, markers[i].lng),
                icon: '../seraj/app/images/mapPin.png',
                map: map
            });

            google.maps.event.addListener(marker, 'click', (function (marker, i) {
                var dom = '<div class="map-info-section">';
                dom += '<div class="infoImage"><img src=' + markers[i].imageURL + ' /></div>';
                dom += '<div class="infoInfo">';
                dom += '<div class="title">';
                dom += '<h4 class="item-title">' + markers[i].title;
                if (markers[i].isOnline) {
                    dom += '<span class="tiny ui green label ml20">آنلاین</span>';
                }
                dom += '</h4></div>';
                dom += '<div class="ui star rating" data-rating=' + markers[i].stars + ' data-max-rating="5"></div>';
                dom += '<div class="description mt10">' + markers[i].description + '</div>';
                dom += '<div class="address mt10">' + markers[i].address + '</div>';
                dom += '</div></div>';
                return function () {
                    infowindow.setContent(dom);
                    infowindow.open(map, marker);
                    $('.ui.star.rating').rating('disable');
                }
            })(marker, i));

            bounds.extend(new google.maps.LatLng(markers[i].lat, markers[i].lng));
        }
        if (markers.length > 1) map.fitBounds(bounds); else map.setZoom(13);
    }

    $($('#phone-section .messages .message')[1]).addClass('active');
    setInterval(function () {
        var message = $('#phone-section .messages .message')[0];
        var midMessage = $('#phone-section .messages .message')[1];
        var nextMessage = $('#phone-section .messages .message')[2];
        $(message).css('margin-top', -$(message).innerHeight()-10);

        $(nextMessage).addClass('active');
        $(midMessage).removeClass('active');

        setTimeout(function () {
            $(message).remove();
            $('#phone-section .messages').append(message);
            $(message).css('margin-top', '5px');
            $(message).removeClass('active');
        }, 2000);
    }, 3000);

    $('#user-login-register').click(function () {
        $('.ui.modal.user-login-register').modal({
            blurring: true,
        }).modal('show');
    });

    var allInputes = $('.ui.form .field input, .ui.form .field textarea');
    $.each(allInputes, function () {
        if ($(this).val() != '') {

            $(this).parents('.field').addClass('focused');
        }
    });

    $('#calculated-rooms .header h3').click(function () {
        $('#calculated-rooms .contents').slideToggle();
    });

    $('.ui.form .field input, .ui.form .field textarea').focus(function () {
        $(this).parents('.field').addClass('focused');
    });

    $('.ui.form .field input, .ui.form .field textarea').blur(function () {
        var inputValue = $(this).val();
        if (inputValue == '') {
            $(this).removeClass('filled');
            $(this).parents('.field').removeClass('focused');
        } else {
            $(this).addClass('filled');
        }
    });

    $('.ui.dropdown').dropdown();

    $('.ui.tab-menu .item').tab();

    $('.ui.checkbox').checkbox();

    $('.ui.sticky.search-section').sticky({
        context: '#main-content'
    });

    $('.ui.tab-menu .item').tab();

    if ($(window).innerWidth() > 768) {
        $('.ui.sticky.filters-section').sticky({
            context: '#hotel-cards',
            offset: 115
        });
    }

    $('.ui.sticky.reservation-sticky').sticky();

    $('.ui.accordion').accordion();

    $('#search-passengers').popup({
        popup: $('.passengers.popup'),
        on: 'click',
        position: 'bottom center'
    });

    $('.ui.star.rating').rating('disable');

    correctPrices();
    console.log('Document is ready!');
});


$(window).resize(function () {
    $('#front-slider, #front-slider div').css('height', $('#site-header').innerHeight());
});



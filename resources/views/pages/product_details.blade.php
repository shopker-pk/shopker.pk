<!DOCTYPE html>
<html lang="en">

<head>
    <title>{{ $page_title }}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="OneTech shop project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $meta_description }}" />
    <meta name="keywords" content="{{ $meta_keywords }}" /> 
    <link rel="icon" type="icon/gif" href="{{ asset('public/assets/images/favicon.png') }}">
    @include('layouts.style')
    <style type="text/css">
        .cat_menu_container:hover ul {
            display: block
        }
        
        #alertmessage,
        .cat_menu_container ul {
            display: none
        }
        
        .wrapper {
            width: 100%;
            margin: 30px auto 0;
            height: 350px;
            border: 1px solid #ccc;
            overflow: hidden
        }
        
        .magnifier-thumb-wrapper.demo {
            float: none;
            padding: 0;
            margin: 0;
            top: 1px
        }
        
        select.form-control:not([size]):not([multiple]) {
            height: 35px
        }
        
        #myCarousel .thumbnail {
            margin-bottom: 0;
        }
        
        #myCarousel1 .thumbnail {
            margin-bottom: 0;
        }
        
        .carousel-control.left,
        .carousel-control.right {
            background-image: none !important;
        }
        
        .carousel-control {
            color: #fff;
            top: 40%;
            color: green;
            bottom: auto;
            padding-top: 4px;
            width: 30px;
            height: 30px;
            text-shadow: none;
            opacity: 1;
        }
        
        .carousel-control:hover {
            color: red;
        }
        
        .carousel-control.left,
        .carousel-control.right {
            background-image: none !important;
        }
        
        .carousel-control.right {
            left: auto;
            right: -32px;
        }
        
        .carousel-control.left {
            right: auto;
            left: -32px;
        }
        
        .carousel-indicators {
            bottom: -30px;
        }
        
        .carousel-indicators li {
            border-radius: 0;
            width: 10px;
            height: 10px;
            background: #ccc;
            border: 1px solid #ccc;
        }
        
        .carousel-indicators .active {
            width: 12px;
            height: 12px;
            background: #3276b1;
            border-color: #3276b1;
        }
        
        #slider-text {
            padding-top: 40px;
            display: block
        }
        
        #slider-text #slider-text h2 {
            font-family: 'Josefin Sans', sans-serif;
            font-weight: 400;
            font-size: 30px;
            letter-spacing: 3px;
            margin: 30px auto;
            padding-left: 40px
        }
        
        #itemslider h4,
        #itemslider h5 {
            font-family: 'Josefin Sans', sans-serif;
            font-size: 16px
        }
        
        #slider-text h2::after {
            border-top: 2px solid #c7c7c7;
            content: "";
            position: absolute;
            bottom: 35px;
            width: 100%
        }
        
        #itemslider h4 {
            font-weight: 400;
            margin: 25px auto 3px
        }
        
        #itemslider h5 {
            font-weight: 700;
            margin: 10px auto 2px
        }
        
        #itemslider h6,
        #itemslider h6 {
            font-size: 14px;
            margin: 5px auto
        }
        
        .ratings {
            margin-top: 10px
        }
        
        #slider-control .left {
            margin-top: -205px;
            margin-left: -30px
        }
        
        #slider-control .right {
            margin-top: -205px;
            margin-right: -30px
        }
        
        @media screen and (max-width:992px) {
            #slider-control img {
                padding-top: 70px;
                margin: 0 auto
            }
        }
        
        .imgcolslider {
            padding-bottom: 40px;
            padding-top: 30px;
            cursor: pointer;
        }
        
        .carousel-showmanymoveone .carousel-control {
            width: 4%;
            background-image: none
        }
        
        .carousel-showmanymoveone .cloneditem-1,
        .carousel-showmanymoveone .cloneditem-2,
        .carousel-showmanymoveone .cloneditem-3,
        .carousel-showmanymoveone .cloneditem-4,
        .carousel-showmanymoveone .cloneditem-5 {
            display: none
        }
        
        @media all and (min-width:768px) {
            .carousel-showmanymoveone .carousel-inner>.active.left,
            .carousel-showmanymoveone .carousel-inner>.prev {
                left: -50%
            }
            .carousel-showmanymoveone .carousel-inner>.active.right,
            .carousel-showmanymoveone .carousel-inner>.next {
                left: 50%
            }
            .carousel-showmanymoveone .carousel-inner>.active,
            .carousel-showmanymoveone .carousel-inner>.left,
            .carousel-showmanymoveone .carousel-inner>.prev.right {
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner .cloneditem-1 {
                display: block
            }
        }
        
        @media all and (min-width:768px) and (transform-3d),
        all and (min-width:768px) and (-webkit-transform-3d) {
            .carousel-showmanymoveone .carousel-inner>.item.active.right,
            .carousel-showmanymoveone .carousel-inner>.item.next {
                -webkit-transform: translate3d(50%, 0, 0);
                transform: translate3d(50%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner>.item.active.left,
            .carousel-showmanymoveone .carousel-inner>.item.prev {
                -webkit-transform: translate3d(-50%, 0, 0);
                transform: translate3d(-50%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner>.item.active,
            .carousel-showmanymoveone .carousel-inner>.item.left,
            .carousel-showmanymoveone .carousel-inner>.item.prev.right {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
                left: 0
            }
        }
        
        @media all and (min-width:992px) {
            .carousel-showmanymoveone .carousel-inner>.active.left,
            .carousel-showmanymoveone .carousel-inner>.prev {
                left: -16.666%
            }
            .carousel-showmanymoveone .carousel-inner>.active.right,
            .carousel-showmanymoveone .carousel-inner>.next {
                left: 16.666%
            }
            .carousel-showmanymoveone .carousel-inner>.active,
            .carousel-showmanymoveone .carousel-inner>.left,
            .carousel-showmanymoveone .carousel-inner>.prev.right {
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner .cloneditem-2,
            .carousel-showmanymoveone .carousel-inner .cloneditem-3,
            .carousel-showmanymoveone .carousel-inner .cloneditem-4,
            .carousel-showmanymoveone .carousel-inner .cloneditem-5,
            .carousel-showmanymoveone .carousel-inner .cloneditem-6 {
                display: block
            }
        }
        
        @media all and (min-width:992px) and (transform-3d),
        all and (min-width:992px) and (-webkit-transform-3d) {
            .carousel-showmanymoveone .carousel-inner>.item.active.right,
            .carousel-showmanymoveone .carousel-inner>.item.next {
                -webkit-transform: translate3d(16.666%, 0, 0);
                transform: translate3d(16.666%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner>.item.active.left,
            .carousel-showmanymoveone .carousel-inner>.item.prev {
                -webkit-transform: translate3d(-16.666%, 0, 0);
                transform: translate3d(-16.666%, 0, 0);
                left: 0
            }
            .carousel-showmanymoveone .carousel-inner>.item.active,
            .carousel-showmanymoveone .carousel-inner>.item.left,
            .carousel-showmanymoveone .carousel-inner>.item.prev.right {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
                left: 0
            }
        }
        
        .img-responsive {
            height: 100px !important;
        }
        
        .badge {
            background: #b20c0c;
            position: absolute;
            height: 40px;
            width: 40px;
            border-radius: 50%;
            line-height: 20px;
            font-size: 12px;
            top: 5px;
            right: 6%;
        }
        
        #secproslide {
            display: none;
        }
        
        @media only screen and (max-width: 991px) {
            #slider-control .left {
                margin-left: 34px !important;
            }
            #slider-control .right {
                margin-right: 43px !important;
            }
            #secproslide {
                display: block;
            }
            #hidebreadcumbs {
                display: none;
            }
            #exTab2 ul li a {
                font-size: 14px;
            }
        }
    </style>
    <script src="{{ asset('public/assets/js/magnifier.js') }}"></script>
    <script src="{{ asset('public/assets/js/events.js') }}"></script>
    <script src="{{ asset('public/assets/js/gallery.js') }}"></script>
    <script type="text/javascript">
        function abc() {
            $("#alertmessage").fadeTo(2000, 500).slideUp(500, function() {
                $("#alertmessage").slideUp(500);
            });
        }

        var thumbnailSliderOptions = {
            sliderId: "thumbnail-slider",
            orientation: "horizontal",
            thumbWidth: "auto",
            thumbHeight: "60px",
            showMode: 1,
            autoAdvance: true,
            selectable: true,
            slideInterval: 3000,
            transitionSpeed: 1500,
            shuffle: false,
            startSlideIndex: 0, //0-based
            pauseOnHover: true,
            initSliderByCallingInitFunc: false,
            rightGap: 0,
            keyboardNav: true,
            mousewheelNav: false,
            before: null,

        };

        var mcThumbnailSlider = new ThumbnailSlider(thumbnailSliderOptions);

        function ThumbnailSlider(a) {
            "use strict";
            if (typeof String.prototype.trim !== "function") String.prototype.trim = function() {
                return this.replace(/^\s+|\s+$/g, "")
            };
            var e = "length",
                l = document,
                Mb = function(c) {
                    var a = c.childNodes;
                    if (a && a[e]) {
                        var b = a[e];
                        while (b--) a[b].nodeType != 1 && a[b][m].removeChild(a[b])
                    }
                },
                eb = function(a) {
                    if (a && a.stopPropagation) a.stopPropagation();
                    else if (a && typeof a.cancelBubble != "undefined") a.cancelBubble = true
                },
                db = function(b) {
                    var a = b || window.event;
                    if (a.preventDefault) a.preventDefault();
                    else if (a) a.returnValue = false
                },
                Qb = function(b) {
                    if (typeof b[f].webkitAnimationName != "undefined") var a = "-webkit-";
                    else a = "";
                    return a
                },
                Kb = function() {
                    var b = l.getElementsByTagName("head");
                    if (b[e]) {
                        var a = l.createElement("style");
                        b[0].appendChild(a);
                        return a.sheet ? a.sheet : a.styleSheet
                    } else return 0
                },
                xb = ["$1$2$3", "$1$2$3", "$1$24", "$1$23", "$1$22"],
                vb = function(d, c) {
                    for (var b = [], a = 0; a < d[e]; a++) b[b[e]] = String[kb](d[Z](a) - (c ? c : 3));
                    return b.join("")
                },
                Vb = function(a) {
                    return a.replace(/(?:.*\.)?(\w)([\w\-])?[^.]*(\w)\.[^.]*$/, "$1$3$2")
                },
                wb = [/(?:.*\.)?(\w)([\w\-])[^.]*(\w)\.[^.]+$/, /.*([\w\-])\.(\w)(\w)\.[^.]+$/, /^(?:.*\.)?(\w)(\w)\.[^.]+$/, /.*([\w\-])([\w\-])\.com\.[^.]+$/, /^(\w)[^.]*(\w)$/],
                p = window.setTimeout,
                s = "nextSibling",
                q = "previousSibling",
                Ub = l.all && !window.atob,
                o = {};
            o.a = Kb();
            var mb = function(b) {
                    b = "#" + a.b + b.replace("__", o.p);
                    o.a.insertRule(b, 0)
                },
                Db = function(a, c, f, e, b) {
                    var d = "@" + o.p + "keyframes " + a + " {from{" + c + ";} to{" + f + ";}}";
                    o.a.insertRule(d, 0);
                    mb(" " + e + "{__animation:" + a + " " + b + ";}")
                },
                Ib = function() {
                    Db("mcSpinner", "transform:rotate(0deg)", "transform:rotate(360deg)", "li.loading::after", ".7s linear infinite");
                    mb(" ul li.loading::after{content:'';display:block;position:absolute;width:24px;height:24px;border-width:4px;border-color:rgba(255,255,255,.8);border-style:solid;border-top-color:black;border-right-color:rgba(0,0,0,.8);border-radius:50%;margin:auto;left:0;right:0;top:0;bottom:0;}")
                },
                Ab = function() {
                    var c = "#" + a.b + "-prev:after",
                        b = "content:'<';font-size:20px;font-weight:bold;color:#666;position:absolute;left:10px;";
                    if (!a.c) b = b.replace("<", "^");
                    o.a.addRule(c, b, 0);
                    o.a.addRule(c.replace("prev", "next"), b.replace("<", ">").replace("^", "v").replace("left", "right"), 0)
                },
                E, N, A, B, C, rb, L = {},
                w = {},
                z;
            E = (navigator.msPointerEnabled || navigator.pointerEnabled) && (navigator.msMaxTouchPoints || navigator.maxTouchPoints);
            var Bb = function(a) {
                return A == "pointerdown" && (a.pointerType == a.MSPOINTER_TYPE_MOUSE || a.pointerType == "mouse")
            };
            N = "ontouchstart" in window || window.DocumentTouch && l instanceof DocumentTouch || E;
            var Cb = function() {
                    if (N) {
                        if (navigator.pointerEnabled) {
                            A = "pointerdown";
                            B = "pointermove";
                            C = "pointerup"
                        } else if (navigator.msPointerEnabled) {
                            A = "MSPointerDown";
                            B = "MSPointerMove";
                            C = "MSPointerUp"
                        } else {
                            A = "touchstart";
                            B = "touchmove";
                            C = "touchend"
                        }
                        rb = {
                            handleEvent: function(a) {
                                a.preventManipulation && a.preventManipulation();
                                switch (a.type) {
                                    case A:
                                        this.a(a);
                                        break;
                                    case B:
                                        this.b(a);
                                        break;
                                    case C:
                                        this.c(a)
                                }
                                eb(a)
                            },
                            a: function(a) {
                                if (Bb(a) || c[e] < 2) return;
                                var d = E ? a : a.touches[0];
                                L = {
                                    x: d[bb],
                                    y: d[cb],
                                    l: b.pS
                                };
                                z = null;
                                w = {};
                                b[t](B, this, false);
                                b[t](C, this, false)
                            },
                            b: function(a) {
                                if (!E && (a.touches[e] > 1 || a.scale && a.scale !== 1)) return;
                                var b = E ? a : a.touches[0];
                                w = {
                                    x: b[bb] - L.x,
                                    y: b[cb] - L.y
                                };
                                if (z === null) z = !!(z || Math.abs(w.x) < Math.abs(w.y));
                                if (!z) {
                                    db(a);
                                    W = 0;
                                    ub();
                                    i(L.l + w.x, 1)
                                }
                            },
                            c: function() {
                                if (z === false) {
                                    var e = g,
                                        l = Math.abs(w.x) > 30;
                                    if (l) {
                                        var f = w.x > 0 ? 1 : -1,
                                            m = f * w.x * 1.5 / c[g][h];
                                        if (f === 1 && a.f == 3 && !c[g][q]) {
                                            var k = b.firstChild[d];
                                            b.insertBefore(b.lastChild, b.firstChild);
                                            i(b.pS + k - b.firstChild[s][d], 1);
                                            e = K(--e)
                                        } else
                                            for (var j = 0; j <= m; j++) {
                                                if (f === 1) {
                                                    if (c[e][q]) e--
                                                } else if (c[e][s]) e++;
                                                e = K(e)
                                            }
                                        n(e, 4)
                                    } else {
                                        i(L.l);
                                        if (a.g) R = window.setInterval(function() {
                                            J(g + 1, 0)
                                        }, a.i)
                                    }
                                    p(function() {
                                        W = 1
                                    }, 500)
                                }
                                b.removeEventListener(B, this, false);
                                b.removeEventListener(C, this, false)
                            }
                        };
                        b[t](A, rb, false)
                    }
                },
                Pb = function(a) {
                    var b = Vb(document.domain.replace("www.", ""));
                    try {
                        typeof atob == "function" && (function(a, c) {
                            var b = vb(atob(""), a[e] + parseInt(a.charAt(1))).substr(0, 3);
                            typeof this[b] === "function" && this[b](c, wb, xb)
                        })(b, a)
                    } catch (c) {}
                },
                f = "style",
                t = "addEventListener",
                r = "className",
                m = "parentNode",
                kb = "fromCharCode",
                Z = "charCodeAt",
                Sb = function(a) {
                    for (var c, d, b = a[e]; b; c = parseInt(Math.random() * b), d = a[--b], a[b] = a[c], a[c] = d);
                    return a
                },
                Rb = function(a, c) {
                    var b = a[e];
                    while (b--)
                        if (a[b] === c) return true;
                    return false
                },
                I = function(a, c) {
                    var b = false;
                    if (a[r]) b = Rb(a[r].split(" "), c);
                    return b
                },
                P = function(a, b, c) {
                    if (!I(a, b))
                        if (a[r] == "") a[r] = b;
                        else if (c) a[r] = b + " " + a[r];
                    else a[r] += " " + b
                },
                H = function(c, f) {
                    if (c[r]) {
                        for (var d = "", b = c[r].split(" "), a = 0, g = b[e]; a < g; a++)
                            if (b[a] !== f) d += b[a] + " ";
                        c[r] = d.trim()
                    }
                },
                K = function(b) {
                    var a = c[e];
                    return b >= 0 ? b % a : (a + b % a) % a
                },
                v = function(a, c, b) {
                    if (a[t]) a[t](c, b, false);
                    else a.attachEvent && a.attachEvent("on" + c, b)
                },
                i = function(d, e) {
                    var c = b[f];
                    if (o.c) {
                        c.webkitTransitionDuration = c.transitionDuration = (e ? 0 : a.j) + "ms";
                        c.webkitTransform = c.transform = "translate" + (a.c ? "X(" : "Y(") + d + "px)"
                    } else c[lb] = d + "px";
                    b.pS = d
                },
                ob = function(a) {
                    return !a.complete ? 0 : a.width === 0 ? 0 : 1
                },
                M = null,
                j, x = 0,
                b, c = [],
                g = 0,
                R, Wb, S = 0,
                fb = 0,
                tb, y = 0,
                W = 1,
                ab, ib, d, h, k, lb, u = 0,
                bb, cb, sb, Lb = function(b) {
                    if (!b.zimg) {
                        b.zimg = 1;
                        b.thumb = b.thumbSrc = 0;
                        var h = b.getElementsByTagName("*");
                        if (h[e])
                            for (var i = 0; i < h[e]; i++) {
                                var d = h[i];
                                if (I(d, "thumb")) {
                                    if (d.tagName == "A") {
                                        var c = d.getAttribute("href");
                                        d[f].backgroundImage = "url('" + c + "')"
                                    } else if (d.tagName == "IMG") c = d.src;
                                    else {
                                        c = d[f].backgroundImage;
                                        if (c && c.indexOf("url(") != -1) c = c.substring(4, c[e] - 1).replace(/[\'\"]/g, "")
                                    }
                                    if (d[m].tagName != "A") d[f].cursor = a.h ? "pointer" : "default";
                                    if (c) {
                                        b.thumb = d;
                                        b.thumbSrc = c;
                                        var g = new Image;
                                        g.onload = g.onerror = function() {
                                            b.zimg = 1;
                                            var a = this;
                                            if (a.width && a.height) {
                                                H(b, "loading");
                                                O(b, a)
                                            } else O(b, 0);
                                            p(function() {
                                                a = null
                                            }, 20)
                                        };
                                        g.src = c;
                                        if (ob(g)) {
                                            b.zimg = 1;
                                            O(b, g);
                                            g = null
                                        } else {
                                            P(b, "loading");
                                            b.zimg = g
                                        }
                                    }
                                    break
                                }
                            }
                    }
                    if (b.zimg !== 1 && ob(b.zimg)) {
                        H(b, "loading");
                        O(b, b.zimg);
                        b.zimg = 1
                    }
                },
                qb = 0,
                jb = function(a) {
                    return g == 0 && a == c[e] - 1
                },
                nb = function(i, m) {
                    var l = c[i],
                        f = 1;
                    if (a.f == 3)
                        if (m == 4) f = l[d] >= c[g][d];
                        else f = i > g && !jb(i) || g == c[e] - 1 && i == 0;
                    else if (m == 4)
                        if (b.pS + l[d] < 20) f = 0;
                        else if (b.pS + l[d] + l[h] >= j[k]) f = 1;
                    else f = -1;
                    else f = i >= g && !jb(i);
                    return f
                },
                F = function(a) {
                    return a.indexOf("%") != -1 ? parseFloat(a) / 100 : parseInt(a)
                },
                Fb = function(a, d, c) {
                    if (d.indexOf("px") != -1 && c.indexOf("px") != -1) {
                        a[f].width = d;
                        a[f].height = c
                    } else {
                        var b = a[q];
                        if (!b || !b[f].width) b = a[s];
                        if (b && b[f].width) {
                            a[f].width = b[f].width;
                            a[f].height = b[f].height
                        } else a[f].width = a[f].height = "64px"
                    }
                },
                O = function(p, k) {
                    var j = a.d,
                        d = a.e;
                    if (!k) Fb(p, j, d);
                    else {
                        var i = k.naturalWidth || k.width,
                            h = k.naturalHeight || k.height,
                            e = "width",
                            g = "height",
                            c = p[f];
                        if (j == "auto")
                            if (d == "auto") {
                                c[g] = h + "px";
                                c[e] = i + "px"
                            } else if (d.indexOf("%") != -1) {
                            var o = (window.innerHeight || l.documentElement.clientHeight) * F(d);
                            c[g] = o + "px";
                            c[e] = i / h * o + "px";
                            if (!a.c) b[m][f].width = c[e]
                        } else {
                            c[g] = d;
                            c[e] = i / h * F(d) + "px"
                        } else if (j.indexOf("%") != -1)
                            if (d == "auto" || d.indexOf("%") != -1) {
                                var n = F(j),
                                    q = b[m][m].clientWidth;
                                if (!a.c && n < .71 && q < 415) n = .9;
                                var r = q * n;
                                c[e] = r + "px";
                                c[g] = h / i * r + "px";
                                if (!a.c) b[m][f].width = c[e]
                            } else {
                                c[e] = i / h * F(d) + "px";
                                c[g] = d
                            } else {
                            c[e] = j;
                            if (d == "auto" || d.indexOf("%") != -1) c[g] = h / i * F(j) + "px";
                            else c[g] = d
                        }
                    }
                },
                G = function(d, i, l, o) {
                    var g = x || 5,
                        r = 0;
                    if (a.f == 3 && i)
                        if (l) var f = Math.ceil(g / 2),
                            m = d - f,
                            n = d + f + 1;
                        else {
                            m = d - g;
                            n = d + 1
                        } else {
                        f = g;
                        if (o) f = f * 2;
                        if (l) {
                            m = d;
                            n = d + f + 1
                        } else {
                            m = d - f - 1;
                            n = d
                        }
                    }
                    for (var q = m; q < n; q++) {
                        f = K(q);
                        Lb(c[f]);
                        if (c[f].zimg !== 1) r = 1
                    }
                    if (i) {
                        !qb++ && Gb();
                        if ((!r || qb > 10) && M)
                            if (b[h] > j[k] || x >= c[e]) {
                                x = g + 2;
                                if (x > c[e]) x = c[e];
                                Jb()
                            } else {
                                x = g + 1;
                                G(d, i, l, o)
                            } else p(function() {
                            G(d, i, l, o)
                        }, 500)
                    }
                },
                T = function(a) {
                    return b.pS + a[d] < 0 ? a : a[q] ? T(a[q]) : a
                },
                D = function(a) {
                    return b.pS + a[d] + a[h] > j[k] ? a : a[s] ? D(a[s]) : a
                },
                U = function(a, b) {
                    return b[d] - a[d] + 20 > j[k] ? a[s] : a[q] ? U(a[q], b) : a
                },
                zb = function(c) {
                    if (a.f == 2) var b = c;
                    else b = T(c);
                    if (b[q]) b = U(b, b);
                    return b
                },
                Nb = function(f, l) {
                    f = K(f);
                    var e = c[f];
                    if (g == f && l != 4 && a.f != 3) return f;
                    var m = nb(f, l);
                    if (a.f == 3) {
                        if (l && l != 3 && l != 4) e = m ? D(c[g]) : T(c[g]);
                        i(-e[d] + (j[k] - e[h]) / 2, l == 3)
                    } else if (l === 4) {
                        if (b.pS + e[d] < 20) {
                            e = U(c[f], c[f]);
                            if (e[q]) i(-e[d] + u);
                            else {
                                i(80);
                                p(function() {
                                    i(0)
                                }, a.j / 2)
                            }
                        } else if (a.o === 0 && !e[s] && b.pS + b[h] == j[k]) {
                            i(j[k] - b[h] - 80);
                            p(function() {
                                i(j[k] - b[h])
                            }, a.j / 2)
                        } else b.pS + e[d] + e[h] + 30 > j[k] && V(e);
                        return f
                    } else if (l) {
                        e = m ? D(c[g]) : zb(c[g]);
                        if (m) V(e);
                        else i(-e[d] + u)
                    } else if (a.f == 2) {
                        if (!m) i(-e[d] + u);
                        else if (b.pS + e[d] + e[h] + 20 > j[k]) {
                            var n = e[s];
                            if (!n) n = e;
                            i(-n[d] - n[h] - u + j[k])
                        }
                    } else if (b.pS + b[h] <= j[k]) {
                        e = c[0];
                        i(-e[d] + u)
                    } else {
                        if (a.f == 4) e = D(c[g]);
                        V(e)
                    }
                    return e.ix
                },
                V = function(c) {
                    if (typeof a.o == "number" && b[h] - c[d] + a.o < j[k]) i(j[k] - b[h] - a.o);
                    else i(-c[d] + u)
                },
                Gb = function() {
                    (new Function("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", function(c) {
                        for (var b = [], a = 0, d = c[e]; a < d; a++) b[b[e]] = String[kb](c[Z](a) - 4);
                        return b.join("")
                    }("zev$NAjyrgxmsr,|0}-zev$eAjyrgxmsr,~-zev$gA~_fa,4-2xsWxvmrk,-?vixyvr$g2wyfwxv,g2pirkxl15-\u0081?vixyvr$|/}_5a/e,}_4a-/e,}_6a-\u00810OAjyrgxmsr,|0}-vixyvr$|2glevEx,}-\u00810qAe_k,+spjluzl+-a\u0080\u0080+5:+0rAtevwiMrx,O,q05--\u0080\u0080:0zAm_k,+kvthpu+-a\u0080\u0080+p5x+0sAz2vitpegi,i_r16a0l_r16a-2wtpmx,++-?j2tAh,g-?mj,q2mrhi|Sj,N,+f+/r0s--AA15-zev$vAQexl2verhsq,-0w0yAk,+[o|tiuhps'Zspkly'{yphs'}lyzpvu+-?mj,v@27-wAg_na_na2tvizmsywWmfpmrk?mj,v@2:**%w-wAg_na_na_na?mj,w**w2ri|xWmfpmrk-wAw2ri|xWmfpmrk\u0081mj,vB2=-wAm2fsh}?mj,O,z04-AA+p+**O,z0z2pirkxl15-AA+x+-wA4?mj,w-w_na2mrwivxFijsvi,m_k,+jylh{l[l{Uvkl+-a,y-0w-\u0081"))).apply(this, [a, Z, b, Qb, wb, o, vb, xb, document, m])
                },
                Jb = function() {
                    u = c[e] > 1 ? c[1][d] - c[0][d] - c[0][h] : 0;
                    b[f].msTouchAction = b[f].touchAction = a.c ? "pan-y" : "pan-x";
                    b[f].webkitTransitionProperty = b[f].transitionProperty = "transform";
                    b[f].webkitTransitionTimingFunction = b[f].transitionTimingFunction = "cubic-bezier(.2,.88,.5,1)";
                    n(g, a.f == 3 ? 3 : 1)
                },
                n = function(c, b) {
                    a.m && clearTimeout(ab);
                    J(c, b);
                    if (a.g) {
                        clearInterval(R);
                        R = window.setInterval(function() {
                            J(g + 1, 0)
                        }, a.i)
                    }
                },
                Q = function() {
                    y = !y;
                    tb[r] = y ? "pause" : "";
                    !y && n(g + 1, 0)
                },
                Tb = function() {
                    if (a.g)
                        if (y) p(Q, 2200);
                        else Q()
                },
                Eb = function(a) {
                    if (!a) a = window.event;
                    var b = a.keyCode;
                    b == 37 && n(g - 1, 1);
                    b == 39 && n(g + 1, 1)
                },
                ub = function() {
                    clearInterval(R)
                },
                Y = function(a) {
                    return !a ? 0 : a.nodeType != 1 ? Y(a[m]) : a.tagName == "LI" ? a : a.tagName == "UL" ? 0 : Y(a[m])
                },
                Hb = function() {
                    a.b = a.sliderId;
                    a.c = a.orientation;
                    a.d = a.thumbWidth;
                    a.e = a.thumbHeight;
                    a.f = a.showMode;
                    a.g = a.autoAdvance;
                    a.h = a.selectable;
                    a.i = a.slideInterval;
                    a.j = a.transitionSpeed;
                    a.k = a.shuffle;
                    a.l = a.startSlideIndex;
                    a.m = a.pauseOnHover;
                    a.o = a.rightGap;
                    a.p = a.keyboardNav;
                    a.q = a.mousewheelNav;
                    a.r = a.before;
                    a.a = a.license;
                    a.c = a.c == "horizontal";
                    if (a.i < a.j + 1e3) a.i = a.j + 1e3;
                    sb = a.j + 100;
                    if (a.f == 2 || a.f == 3) a.h = true;
                    a.m = a.m && !N && a.g;
                    var b = a.c;
                    h = b ? "offsetWidth" : "offsetHeight";
                    k = b ? "clientWidth" : "clientHeight";
                    d = b ? "offsetLeft" : "offsetTop";
                    lb = b ? "left" : "top";
                    bb = b ? "pageX" : "pageY";
                    cb = b ? "pageY" : "pageX"
                },
                pb = function(s) {
                    Hb();
                    b = s;
                    b.pS = 0;
                    Pb(a.a);
                    j = b[m];
                    if (a.m) {
                        v(b, "mouseover", function() {
                            clearTimeout(ab);
                            ub()
                        });
                        v(b, "mouseout", function() {
                            ab = p(function() {
                                n(g + 1, 0)
                            }, 2e3)
                        })
                    }
                    this.b();
                    v(b, "click", function(c) {
                        var b = c.target || c.srcElement;
                        if (b && b.nodeType == 1) {
                            b.tagName == "A" && I(b, "thumb") && db(c);
                            if (a.h) {
                                var d = Y(b);
                                if (d) W && n(d.ix, 4)
                            }
                        }
                        eb(c)
                    });
                    if (a.q) {
                        var q = l.getElementById(a.b),
                            i = /Firefox/i.test(navigator.userAgent) ? "DOMMouseScroll" : "mousewheel",
                            d = null;
                        v(q, i, function(a) {
                            var a = a || window.event,
                                b = a.detail ? -a.detail : a.wheelDelta;
                            if (b) {
                                clearTimeout(d);
                                b = b > 0 ? 1 : -1;
                                d = p(function() {
                                    J(g - b, 4)
                                }, 60)
                            }
                            db(a)
                        })
                    }
                    Cb();
                    G(0, 1, 1, 0);
                    o.c = typeof b[f].transform != "undefined" || typeof b[f].webkitTransform != "undefined";
                    if (o.a)
                        if (o.a.insertRule && !Ub) Ib();
                        else l.all && !l[t] && Ab();
                    a.p && v(l, "keydown", Eb);
                    v(l, "visibilitychange", Tb);
                    if ((a.d + a.e).indexOf("%") != -1) {
                        var h = null,
                            r = function(e) {
                                var d = e[f],
                                    j = e.offsetWidth,
                                    i = e.offsetHeight;
                                if (a.d.indexOf("%") != -1) {
                                    var c = parseFloat(a.d) / 100,
                                        g = b[m][m].clientWidth;
                                    if (!a.c && c < .71 && g < 415) c = .9;
                                    d.width = g * c + "px";
                                    d.height = i / j * g * c + "px"
                                } else {
                                    c = parseFloat(a.e) / 100;
                                    var h = (window.innerHeight || l.documentElement.clientHeight) * c;
                                    d.height = h + "px";
                                    d.width = j / i * h + "px"
                                }
                                if (!a.c) b[m][f].width = d.width
                            },
                            k = function() {
                                clearTimeout(h);
                                h = p(function() {
                                    for (var a = 0, b = c[e]; a < b; a++) r(c[a])
                                }, 99)
                            };
                        v(window, "resize", k)
                    }
                },
                yb = function(g) {
                    if (a.h) {
                        for (var d = 0, i = c[e]; d < i; d++) {
                            H(c[d], "active");
                            c[d][f].zIndex = 0
                        }
                        P(c[g], "active");
                        c[g][f].zIndex = 1
                    }
                    S == 0 && M.e();
                    if (a.f != 3) {
                        if (b.pS + u < 0) H(S, "disabled");
                        else P(S, "disabled");
                        if (b.pS + b[h] - u - 1 <= j[k]) P(fb, "disabled");
                        else H(fb, "disabled")
                    }
                },
                hb = function() {
                    var a = b.firstChild;
                    if (b.pS + a[d] > -50) return;
                    while (1)
                        if (b.pS + a[d] < 0 && a[s]) a = a[s];
                        else {
                            if (a[q]) a = a[q];
                            break
                        }
                    var e = a[d],
                        c = b.firstChild;
                    while (c != a) {
                        b.appendChild(b.firstChild);
                        c = b.firstChild
                    }
                    i(b.pS + e - a[d], 1)
                },
                gb = function() {
                    var a = D(b.firstChild),
                        f = a[d],
                        c = b.lastChild,
                        e = 0;
                    while (c != a && e < x && c.zimg === 1) {
                        b.insertBefore(b.lastChild, b.firstChild);
                        c = b.lastChild;
                        e++
                    }
                    i(b.pS + f - a[d], 1)
                },
                J = function(b, d) {
                    if (c[e] < 2) return;
                    b = K(b);
                    if (!d && (y || b == g)) return;
                    var f = nb(b, d);
                    if (d && f != -1) {
                        G(b, 0, f, 1);
                        if (a.f == 3) {
                            clearTimeout(ib);
                            if (f) hb();
                            else gb()
                        }
                    }
                    var h = g;
                    b = Nb(b, d);
                    yb(b);
                    g = b;
                    G(b, 0, 1, a.f == 4);
                    if (a.f == 3) ib = p(hb, sb);
                    a.r && a.r(h, b, d)
                };
            pb.prototype = {
                c: function() {
                    for (var g = b.children, d = 0, h = g[e]; d < h; d++) {
                        c[d] = g[d];
                        c[d].ix = d;
                        c[d][f].display = a.c ? "inline-block" : "block"
                    }
                },
                b: function() {
                    Mb(b);
                    this.c();
                    var f = 0;
                    if (a.k) {
                        for (var g = Sb(c), d = 0, i = g[e]; d < i; d++) b.appendChild(g[d]);
                        f = 1
                    } else if (a.l) {
                        for (var h = a.l % c[e], d = 0; d < h; d++) b.appendChild(c[d]);
                        f = 1
                    }
                    f && this.c()
                },
                d: function(d, c) {
                    var b = l.createElement("div");
                    b.id = a.b + d;
                    if (c) b.onclick = c;
                    N && b[t]("touchstart", function(a) {
                        a.preventDefault();
                        a.target.click();
                        eb(a)
                    }, false);
                    b = j[m].appendChild(b);
                    return b
                },
                e: function() {
                    S = this.d("-prev", function() {
                        !I(this, "disabled") && n(g - 1, 1)
                    });
                    fb = this.d("-next", function() {
                        !I(this, "disabled") && n(g + 1, 1)
                    });
                    tb = this.d("-pause-play", Q)
                }
            };
            var X = function() {
                    var b = l.getElementById(a.sliderId);
                    if (b) {
                        var c = b.getElementsByTagName("ul");
                        if (c[e]) M = new pb(c[0])
                    }
                },
                Ob = function(c) {
                    var a = 0;

                    function b() {
                        if (a) return;
                        a = 1;
                        p(c, 4)
                    }
                    if (l[t]) l[t]("DOMContentLoaded", b, false);
                    else v(window, "load", b)
                };
            if (!a.initSliderByCallingInitFunc)
                if (l.getElementById(a.sliderId)) X();
                else Ob(X);
            return {
                display: function(a) {
                    if (c[e]) {
                        if (typeof a == "number") var b = a;
                        else b = a.ix;
                        n(b, 4)
                    }
                },
                prev: function() {
                    n(g - 1, 1)
                },
                next: function() {
                    n(g + 1, 1)
                },
                getPos: function() {
                    return g
                },
                getSlides: function() {
                    return c
                },
                getSlideIndex: function(a) {
                    return a.ix
                },
                toggle: Q,
                init: function(e) {
                    !M && X();
                    if (typeof e == "number") var b = e;
                    else b = b ? e.ix : 0;
                    if (a.f == 3) {
                        i(-c[b][d] + (j[k] - c[b][h]) / 2, 1);
                        gb();
                        J(b, 0)
                    } else {
                        i(-c[b][d] + j[h], 4);
                        n(b, 4)
                    }
                }
            }
        }

        function wishcolor() {
            document.getElementById('wishproducticon1').style.color = '#c0151e';

        }

        function socialicon() {
            document.getElementById('social').style.display = 'block';
        }
    </script>
</head>

<body>
    @include('layouts.header') 
    @include('layouts.navigation')
    <div class="container-fluid" id="hidebreadcumbs">
        @include('layouts.messages')
        <div class="row mt-3">
            <div class="col-md-1"></div>
            <div class="col-md-11 mt-1">
                <div>
                    <a href="{{ route('home') }}" id="breadcumbs">Home</a> <i class="fas fa-angle-right"></i>
                    <a href="{{ route('products_by_categories', $product_details['parent_slug']) }}" id="breadcumbs">{{ $product_details['parent_category'] }}</a> <i class="fas fa-angle-right"></i>
                    <a href="{{ route('products_by_categories', $product_details['child_slug']) }}" id="breadcumbs">{{ $product_details['child_slug'] }} </a><i class="fas fa-angle-right"></i>
                    <a href="{{ route('products_by_categories', $product_details['sub_child_slug']) }}" id="breadcumbs">{{ $product_details['sub_child_category'] }} </a><i class="fas fa-angle-right"></i>
                    <a href="{{ route('product_details', $product_details['product_slug']) }}" id="breadcumbs">{{ $product_details['product_name'] }}</a>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-1" style="display: none;">
                <hr style="visibility: hidden;">
                <img src="{{ asset('public/assets/images/blog_2.jpg') }}" width="100%" height="100" onclick="clickimage(this.src)">
                <hr>
                <img src="{{ asset('public/assets/images/blog_4.jpg') }}" width="100%" height="100" onclick="clickimage(this.src)">
                <hr>
                <img src="{{ asset('public/assets/images/blog_3.jpg') }}" width="100%" height="100" onclick="clickimage(this.src)">
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-3">
                <div class="wrapper">
                    <div align="center">
                        <a class="magnifier-thumb-wrapper demo" id="bigimage" href="{{ asset('public/assets/images/blog_2.jpg') }}">
                            @foreach($product_images as $row)
                            <img id="thumb-inside" src="{{ $row }}" width="100%" height="350" data-mode="inside" data-zoomable="true">
                            @endforeach
                        </a>
                    </div>
                </div>
                <div id="thumbnail-slider">
                    <div class="inner">
                        <ul>
                            @foreach($product_images as $row)
                            <li>
                                <a class="thumb" href="{{ $row }}" onclick="clickimage(this.href)"></a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div></div>
            </div>
            <div class="col-md-5">
                <div class="">
                    <h3>{{ $product_details['product_name'] }}</h3>
                    <div class="row">
                        <div class="col-md-6 col-xs-6">
                            <div align="left">
                            @if($product_details['total_stars'] == 5)
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                            @elseif($product_details['total_stars'] == 4)
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                            @elseif($product_details['total_stars'] == 3)
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                            @elseif($product_details['total_stars'] == 2)
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                            @elseif($product_details['total_stars'] == 1)
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                            @else 
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                            @endif
                                <a href="javascript::void(0)"><span style="font-size: 15px; margin-top: 7px; margin-left: 10px;">
                                    @if($product_details['total_ratings']  == 0) 
                                        0 Rating 
                                    @elseif($product_details['total_ratings']  == 1) 
                                        1 Rating 
                                    @else 
                                        {{ $product_details['total_ratings'] }} Ratings 
                                    @endif
                                </span></a>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2"></div>
                        <div class="col-md-4 col-xs-4">
                            <div align="center">
                                <i class="fas fa-share-alt" id="shareproducticon" onclick="socialicon()"></i>
                                <i class="far fa-heart" onclick="wishcolor()" id="wishproducticon1"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" align="center">
                            <div class="popup mb-2" id="social">
                                <i class="fab fa-facebook" id="facebookicons"></i>
                                <i class="fab fa-instagram" id="instagramicons"></i>
                                <i class="fab fa-twitter" id="twittericons"></i>
                                <i class="fab fa-whatsapp" id="whatsappicons"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row pb-3">
                        <div class="col-md-12">
                            <span>Brand : <a href="javascript::void(0)";>{{ $product_details['brand_name'] }}</a> | <a href="javascript::void(0)";>More {{ $product_details['sub_child_category'] }} from {{ $product_details['brand_name'] }}</a></span>
                        </div>
                    </div>
                    <div class="row" id="first">
                        <div class="col-md-6 col-xs-8">
                            <div class="pricerow">
                            @if(!empty($product_details['sale_price']))
                                <h3><b style="color:#008000;">Rs.{{ $product_details['sale_price'] }}</b></h3> 
                            @else
                                <h3><b style="color:#008000;">Rs.{{ $product_details['cost_price'] }}</b></h3> 
                            @endif
                            </div>
                            @if(!empty($product_details['sale_price']))
                                <p><strike>Rs.{{ $product_details['cost_price'] }}</strike></p>
                            @endif
                        </div>
                        <div class="col-md-2 col-xs-2"></div>
                        <div class="col-md-3 col-xs-2">
                            @if(!empty($product_details['sale_price']))
                            <div class="uptobox" align="center">
                                <span class="badge">Off <div style="margin-top: -7px;"> {{ $product_details['total_discount'] }}%</div></span>
                            </div>
                            @endif
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12">
                            <div>
                                <span class="colors">Colors :</span>
                                <a href="javascript::void(0)" id="colorbtn">Black |</a>
                                <a href="javascript::void(0)" id="colorbtn">Red |</a>
                                <a href="javascript::void(0)" id="colorbtn">Green |</a>
                                <a href="javascript::void(0)" id="colorbtn">Blue </a>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3 mb-5">
                        <div class="col-md-12">
                            <div>
                                <span class="colors">Size :</span>
                                <a href="javascript::void(0)" id="colorbtn">M |</a>
                                <a href="javascript::void(0)" id="colorbtn">L |</a>
                                <a href="javascript::void(0)" id="colorbtn">S |</a>
                                <a href="javascript::void(0)" id="colorbtn">XL |</a>
                                <a href="javascript::void(0)" id="colorbtn">XS </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-xs-6 mt-1">
                            <a href="cart.php">
                                <button class="btn buybtn" style="font-size: 20px; color: white;"><i class="fas fa-shopping-basket"></i> Buy Now</button>
                            </a>
                        </div>

                        <div class="col-md-5 col-xs-6 mt-1">
                            <button class="btn buybtn" style="font-size: 20px; color: white;" onclick="abc()"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="" style="color: white;">.</div>
                <div class="delieve">
                    <h4 align="center"><img src="{{ asset('public/assets/images/shop.png') }}" width="150" height="80"></h4>
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-9">
                            <div class="">
                                <h4 align="center"><b>Delievery Options</b></h4>
                                <h5 align="center"><i class="fas fa-map-marker-alt" style="color: green; margin-right: 10px;"></i> Islamabad,Islamabad GT-5</h5>
                                <a href="javascript::void(0)" style="color: black;"><h5 align="center" onclick="search()"> Change </h5></a>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="searchcity" style="display: none;">
                        <div class="col-md-1"></div>
                        <div class="col-md-9">
                            <select class="form-control">
                                <option>Select</option>
                                <option>Islamabad</option>
                                <option>Karachi</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-9">
                            <div class="">
                                <h5 align="center" class="homemargin"><i class="fas fa-home" style="color: green; margin-right: 10px;"></i> <b>Home Delievery</b> <br> Rs. 500</h5>
                                <h5 align="center" class="homemargin"> <b>SOLD BY</b> <br> <a href="javascript::void(0)";> {{ $product_details['store_name'] }}</a></h5>
                                <h5 align="center" class="homemargin"> <b>WARRANTY</b> <br> {{ $product_details['warranty_type'] }}</h5>
                                <h5 align="center" class="homemargin"> <b>DELIEVERY</b> <br> 3 to 7 Working Days</h5>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center bg-inverse">
                            <a href="vendorstore.php"><h5 class="text-uppercase">go to store</h5></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="exTab2" class="container-fluid" style="margin-top: 10px;">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#1" data-toggle="tab">Decription</a></li>
                <li><a href="#2" data-toggle="tab">Specification</a></li>
                <li><a href="#3" data-toggle="tab">Video</a></li>
                <li><a href="#4" data-toggle="tab">Others Information</a></li>
                <li><a href="#5" data-toggle="tab">Reviews</a></li>
            </ul>
            <div class="tab-content ">
                <!--Tab 1-->
                <div class="tab-pane active" id="1">
                    <h3><b>{{ $product_details['product_name'] }}</b></h3>
                    <p>{{ $product_details['description'] }}</p>
                    <hr/>
                </div>
                <!--Tab 2-->
                <div class="tab-pane" id="2">
                    <h3><b>Specification</b></h3>
                    <ul>
                        @foreach($product_details['key_features'] as $row)
                        <li><i class="fas fa-arrow-right" style="color: green; margin-right: 10px; "></i> <b>{{  $row }}</b></li>
                        @endforeach
                    </ul>
                    <hr/>
                </div>
                <!--Tab 3-->
                <div class="tab-pane" id="3">
                    <h3><b>Videos</b></h3>
                    <div class="row">
                        <div class="col-md-4">
                            <iframe width="100%" height="345" src="https://www.youtube.com/embed/0LHmevWVvpc"></iframe>
                        </div>
                    </div>
                    <hr/>
                </div>
                <!--Tab 4-->
                <div class="tab-pane" id="4">
                    <div class="row mt-4">
                        <div class="col-md-1">
                            <h4 class="pl-4">Weight:</h4>
                        </div>
                        <div class="col-md-1">
                            <h4><b>{{ $product_details['weight'] }} kg</b></h4>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-1">

                            <h4 class="pl-4">Brand</h4>
                        </div>
                        <div class="col-md-3">
                            <h4><b>{{ $product_details['brand_name'] }}</b></h4>
                        </div>
                        <div class="col-md-1">

                            <h4 class="pl-4">SKU</h4>
                        </div>
                        <div class="col-md-3">
                            <h4><b>{{ $product_details['sku_code'] }}</b></h4>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-md-2">

                            <h4 class="pl-4">What’s in the box</h4>
                        </div>
                        <div class="col-md-7">
                            <h4><b>{{ $product_details['what_in_the_box'] }}</b></h4>
                        </div>
                    </div>

                    <hr/>
                </div>
                <!--Tab 5-->
                <div class="tab-pane" id="5">
                    <h3><b>Reviews</b></h3>
                    <div class="row">
                        <div class="col-md-2">
                            <div class="reviewratings pl-3">{{ $product_details['total_stars'] }}<span class="halfratings pl-1">/5</span></div>
                            <div class="pl-3">
                                <i class="fas fa-star" id="reviewstars" style="color:#008000;"></i>
                                <i class="fas fa-star" id="reviewstars" style="color:#008000;"></i>
                                <i class="fas fa-star" id="reviewstars" style="color:#008000;"></i>
                                <i class="fas fa-star" id="reviewstars" style="color:#008000;"></i>
                                <i class="fas fa-star" id="reviewstars" style="color:#008000;"></i>
                            </div>
                            <p class="pl-3 mt-2">
                                @if($product_details['total_ratings'] == 0) 
                                    0 Rating 
                                @elseif($product_details['total_ratings'] == 1) 
                                    1 Rating 
                                @else 
                                    {{ $product_details['total_ratings'] }} Ratings 
                                @endif
                            </p>
                        </div>
                        <div class="col-md-2">
                            <div>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <span class="pl-2">{{ $product_details['five_stars'] }}</span>
                            </div>
                            <div>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <span class="pl-2">{{ $product_details['four_stars'] }}</span>
                            </div>
                            <div>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <span class="pl-2">{{ $product_details['three_stars'] }}</span>
                            </div>
                            <div>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <span class="pl-2">{{ $product_details['two_stars'] }}</span>
                            </div>
                            <div>
                                <i style="color:#008000;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                <span class="pl-2">{{ $product_details['one_stars'] }}</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <hr/>
                            <h4>Product Reviews : </h4>
                            <hr/>
                        </div>
                    </div>
                    @if(!empty($product_reviews))
                        @foreach($product_reviews as $row)
                        <div class="row">
                            <div class="col-md-3">
                                @if($row['stars'] == 5)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                @elseif($row['stars'] == 4)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['stars'] == 3)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['stars'] == 2)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @elseif($row['stars'] == 1)
                                    <i style="color:#008000;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @else 
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                @endif
                            </div>
                            <div class="col-md-7"></div>
                            <div class="col-md-2">
                                <p class="text-center" style="font-size: 12px;">{{ date('D M Y', strtotime($row['created_date'])) }} {{ date('h:i:s A', strtotime($row['created_time'])) }}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div>
                                    <p style="font-size: 15px;">by {{ $row['user_name'] }} <img src="{{ asset('public/assets/images/shield.png') }}" class="ml-2 mb-2" width="18" height="18"><span style="color: #008000;"> Verified Purchase</span> </p>
                                    <p style="font-size: 16px; color: black;">{{ $row['buyer_comment'] }}</p>
                                    <p>Product Name : {{ $row['product_name'] }}</p>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10" id="replyreview">
                                        <div class="mt-3 mb-3">
                                            <img src="{{ asset('public/assets/images/shield.png') }}" class="ml-2 mt-1 mb-2" width="18" height="18">
                                            <span class="ml-2" style="color: #00dc7f;">@if(!empty($row['store_name'])) @else Admin @endif{{ $row['store_name'] }} - {{ date('D M Y', strtotime($row['created_date'])) }} {{ date('h:i:s A', strtotime($row['created_time'])) }}</span>
                                        </div>
                                        <p class="ml-3">
                                            {{ $row['vendor_comment'] }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr/>
                        @endforeach
                    @endif
                    <div class="reviewproductoption">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>HOW DO YOU RATE THIS PRODUCT?</h4>
                                <div class="row mb-5">
                                    <div class="col-md-12">
                                        <div class="rate">
                                            <input type="radio" id="star5" name="rate" value="5" />
                                            <label for="star5" title="5 Star" style="font-size: 40px;">5 stars</label>
                                            <input type="radio" id="star4" name="rate" value="4" />
                                            <label for="star4" title="4 Star" style="font-size: 40px;">4 stars</label>
                                            <input type="radio" id="star3" name="rate" value="3" />
                                            <label for="star3" title="3 Star" style="font-size: 40px;">3 stars</label>
                                            <input type="radio" id="star2" name="rate" value="2" />
                                            <label for="star2" title="2 Star" style="font-size: 40px;">2 stars</label>
                                            <input type="radio" id="star1" name="rate" value="1" />
                                            <label for="star1" title="1 Star" style="font-size: 40px;">1 star</label>
                                        </div>
                                    </div>
                                </div>
                                <h4>WRITE YOUR OWN REVIEW</h4>
                                <form>
                                    <div class="row">
                                        <div class="col-md-12 form-group">
                                            <label>Review</label>
                                            <textarea class="form-control" id="exampleFormControlTextarea3" rows="7"></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-2 form-group">
                                            <button class="btn btnview1">Send</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-6" align="center">
                                <div class="wow rotateIn">
                                    <img src="{{ asset('public/assets/images/customerreview.png') }}" height="280" width="280" id="reviewimage">
                                </div>
                            </div>
                        </div>
                        <hr/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <div style="font-size: 22px; color: white; margin-top: 30px;"><span style=" padding: 3px; background-image: linear-gradient(to left,green,black);">RELATED</span><span style="padding: 3px; background-image: linear-gradient(to right,red,black);"> PRODUCTS</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid" style="margin-bottom: 120px;">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="row mt-5 mb-5">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="carousel carousel-showmanymoveone slide" id="itemslider">
                            <div class="carousel-inner">
                                <div class="item active">
                                    @if(!empty($related_products))
                                    @foreach($related_products as $row)
                                <div class="col-xs-6 col-sm-6 col-md-2 imgcolslider">
                                    <a href="{{ route('product_details', $row['slug']) }}"><img src="{{ $row['image'] }}" class="img-responsive center-block" alt="{{ $row['image_alt'] }}"></a>
                                    <span class="badge">Off <div style="margin-top: -7px;"> {{ $row['total_discount'] }}%</div></span>
                                    <h4 class="text-center textmanage"><a href="{{ route('product_details', $row['slug']) }}">{{ $row['name'] }}</h4></a>
                                    <h5 class="text-center">Rs. {{ $row['sale_price'] }}</h5>
                                    <h6 class="text-center"><strike>Rs. {{ $row['cost_price'] }}</strike></h6>
                                    <div align="center" class="ratings">
                                    @if($row['total_stars'] == 5)
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                    @elseif($row['total_stars'] == 4)
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    @elseif($row['total_stars'] == 3)
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    @elseif($row['total_stars'] == 2)
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    @elseif($row['total_stars'] == 1)
                                        <i style="color:#008000;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    @else 
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                        <i style="color:#d8d8d8;" class="fas fa-star"></i>
                                    @endif
                                    </div>
                                    <div align="center" class="mb-2 mt-4">
                                        <span style="border: 1px solid #ccc; padding: 8px; border-radius: 5px;">40</span>
                                        <span>-</span>
                                        <span style="border: 1px solid #ccc; padding: 8px; border-radius: 5px;">23</span>
                                        <span>-</span>
                                        <span style="border: 1px solid #ccc; padding: 8px; border-radius: 5px;">01</span>
                                    </div>
                                    <div align="center" id="displayviewbtnhover">
                                        <a href="{{ route('product_details', $row['slug']) }}" class="btn btn-sm btnview">View more</a>
                                    </div>
                                </div>
                                    @endforeach
                                @endif
                                </div>
                            </div>
                            <div id="slider-control">
                                <a class="left carousel-control" href="#itemslider" data-slide="prev"><i class="fa fa-chevron-left fa-2x"></i></a>
                                <a class="right carousel-control" href="#itemslider" data-slide="next"><i class="fa fa-chevron-right fa-2x"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('#itemslider').carousel({
                interval: 3000
            });

            $('.carousel-showmanymoveone .item').each(function() {
                var itemToClone = $(this);

                for (var i = 1; i < 6; i++) {
                    itemToClone = itemToClone.next();

                    if (!itemToClone.length) {
                        itemToClone = $(this).siblings(':first');
                    }

                    itemToClone.children(':first-child').clone()
                        .addClass("cloneditem-" + (i))
                        .appendTo($(this));
                }
            });
        });

        function search() {
            document.getElementById('searchcity').style.display = 'block';
        }

        var evt = new Event(),
            m = new Magnifier(evt, {
                largeWrapper: document.getElementById('gallery-preview')
            }),
            imageData = [
                {
                    title: 'Hooded Warbler',
                    thumb: 'http://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/110_Hooded_Warbler.jpg/250px-110_Hooded_Warbler.jpg',
                    large: 'http://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/110_Hooded_Warbler.jpg/1000px-110_Hooded_Warbler.jpg',
                    url: 'http://commons.wikimedia.org/wiki/File:110_Hooded_Warbler.jpg'
                },

            ],
            gallery = new Gallery(evt, m, {
                gallery: document.getElementById('gallery'),
                images: imageData,
                prev: document.getElementById('gallery-prev'),
                next: document.getElementById('gallery-next'),
                previewText: document.getElementById('gallery-preview-title')
            });

        m.attach({
            thumb: '#thumb-inside',
            large: document.getElementById('thumb-inside').src,
            zoom: 0
        });

        function clickimage(a) {
            var aa = document.getElementById('thumb-inside').src = a;
            var ab = document.getElementById('thumb-inside-large').src = a;

            document.getElementById('bigimage').href = a;

        }
    </script>
    @include('layouts.footer')
</body>

</html>
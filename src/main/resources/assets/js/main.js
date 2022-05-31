(function() {
    "use strict";
    var isTouchDevice = navigator.userAgent.match(/(iPhone|iPod|iPad|Android|BlackBerry|Windows Phone)/);

    $(document).ready(function() {
        // Charts Initialization
        // Travel Dashboard Chart
        setTravelChart();

        // Financial Dashboard Charts
        setPayoutsChart();
        setFinancialSalesChart();

        // Analytical Charts
        setDataSalesChart();
        setUsersChart();
        setViewsChart();
        setGoalsChart();
        setStatisticChart();
        setTrafficChart();
        setOverviewChart();

        // Default Dashboard

        setAudienceChart();
        setBestSellingChart();
        setDevelopmentChart();
        setPayoutsChart();
        setSalesChart();

        //Data widgets
        setDataSalesChart();
        setEarningsChart();
        setBalanceChart();

        //Chart Widgets
        setPageViewChart();
        setSalesChart();
        setSalesChart2();
        setUsersChart();
        setViewsChart();
        setGoalsChart();
        setStatisticChart();
        setOverviewChart();

        menu();
        setSearchListener();
        setMenuToggle();
        autoGrow();
        setToasts();
        setTaskboard();
        setAutocompletes();

        rating();
        setIcons();
        formValidation();
        initDatatables();

        initMorrisCharts();
        initChartJs();
        initEcharts();

        initSettings();

        $(".selectpicker").selectpicker();
    });

    $(window).on("load", function() {
        $.ready.then(function() {
            $("body").addClass("loaded");
        });
    });

    function initDatatables() {
        var tables = $(".data-table");

        tables.each(function() {
            var el = $(this);

            el.dataTable();

            el.wrap("<div class='table-responsive'></div>");
        });
    }

    function initSettings() {
        var settingsPanel = document.getElementById("settings-panel");
        var overlay = document.getElementById("settings-overlay");

        if (settingsPanel) {
            var toggleBtn = document.getElementById("toggle-btn"),
                widthSelect = document.getElementById("width-select"),
                layoutSelect = document.getElementById("layout-select"),
                searchToggle = document.getElementById("search-switch"),
                navColorToggle = document.getElementById("nav-color-toggle"),
                sidenavColorToggle = document.getElementById("sidenav-color-toggle");

            var toggleWidth = function(e) {
                var width = e.target.value;

                width === "boxed" ? document.body.classList.add("boxed") : document.body.classList.remove("boxed");
            };

            var toggleLayout = function(e) {
                var layout = e.target.value === "vertical" ? "index.html" : "hl-index.html";
                window.location.href = layout;
            };

            var toggleSearch = function() {
                document.body.classList.toggle("hide-search");
            };

            var getColor = function(e) {
                return e.target.dataset.color ? e.target.dataset.color : null;
            };

            var toggleColor = function(className) {
                return function(e) {
                    var buttons = this.querySelectorAll("button");

                    if (!Array.from(buttons).includes(e.target)) {
                        return;
                    }

                    for (var i = 0; i < buttons.length; i++) {
                        buttons[i].classList.remove("active");
                    }

                    e.target.classList.add("active");

                    var element = document.getElementsByClassName(className)[0];
                    var colorClass = getColor(e);

                    if (!colorClass) {
                        return;
                    }

                    if (colorClass === "light") {
                        element.classList.add("light");
                        element.classList.remove("dark");
                    }

                    if (colorClass === "dark") {
                        element.classList.add("dark");
                        element.classList.remove("light");
                    }
                };
            };

            function toggleSettings() {
                settingsPanel.classList.toggle("open");
                overlay.classList.toggle("open");
            }

            toggleBtn.addEventListener("click", toggleSettings);

            widthSelect.addEventListener("change", toggleWidth);
            layoutSelect.addEventListener("change", toggleLayout);
            searchToggle.addEventListener("change", toggleSearch);
            navColorToggle.addEventListener("click", toggleColor("nav-bar"));
            sidenavColorToggle.addEventListener("click", toggleColor("side-bar"));

            overlay.addEventListener("click", toggleSettings);
        }
    }

    function rating() {
        var rating = $("select.rating-component");

        if (rating.length) {
            rating.each(function() {
                var item = $(this);

                var readonly = item.data("readonly");
                var reverse = item.data("reverse");

                item.barrating({
                    theme: "css-stars",
                    showSelectedRating: false,
                    readonly: readonly,
                    reverse: reverse
                });
            });

            setTimeout(function() {
                var wrappers = document.querySelectorAll(".br-wrapper");

                wrappers.forEach(function(item) {
                    var select = item.getElementsByClassName("bootstrap-select")[0];
                    select.remove();
                });
            }, 0);
        }
    }

    function setIcons() {
        var iconsContainer = document.getElementById("icons");
        var instertIcon = function(iconClass) {
            var container = document.createElement("div");
            container.className = "icon";

            var icon = document.createElement("span");
            icon.classList.add("icofont", iconClass);

            container.appendChild(icon);
            iconsContainer.appendChild(container);
        };
        if (iconsContainer) {
            $.ajax({
                url: "../assets/data/icons.json",
                dataType: "json",
                success: function(data) {
                    data.forEach(function(icon) {
                        instertIcon(icon);
                    });
                }
            });
        }
    }

    function setTaskboard() {
        var toDo = document.getElementById("to-do-bag");
        var inProgress = document.getElementById("in-progress-bag");
        var testing = document.getElementById("testing-bag");
        var done = document.getElementById("done-bag");

        dragula([toDo, inProgress, testing, done]);
    }

    function setToasts() {
        var toastButtons = Array.from(document.querySelectorAll(".toast-button"));

        function triggerToast(target) {
            return function() {
                $("#" + target).toast("show");
            };
        }

        toastButtons.forEach(function(btn) {
            var target = btn.dataset.target;

            btn.addEventListener("click", triggerToast(target));
        });
    }

    function formValidation() {
        window.addEventListener(
            "load",
            function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName("needs-validation");
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener(
                        "submit",
                        function(event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add("was-validated");
                        },
                        false
                    );
                });
            },
            false
        );
    }

    function autoGrow() {
        var textareas = Array.from(document.querySelectorAll("textarea"));
        var autoGrow = textareas.filter(function(e) {
            return e.dataset.resize && e.dataset.resize === "auto-grow";
        });

        autoGrow.forEach(function(el) {
            el.addEventListener("keydown", function() {
                el.style.overflow = "hidden";
                el.style.minHeight = "62px";

                setInterval(function() {
                    el.style.height = el.scrollHeight + "px";
                }, 0);
            });
        });
    }

    function setMenuToggle() {
        var overlay = document.getElementById("side-bar-overlay");
        var toggleBtn = document.getElementById("toggle-menu");
        var menu = document.getElementById("side-bar");
        var layout = document.getElementsByClassName("layout")[0];
        var closeBtn = document.getElementById('close-btn');

        if (!(menu && layout)) {
            return;
        }

        var toggleMenu = function() {
            menu.classList.toggle("opened");
            layout.classList.toggle("side-bar-opened");
        };

        if (overlay) {
            overlay.addEventListener("click", toggleMenu);
        }

        if (toggleBtn) {
            toggleBtn.addEventListener("click", toggleMenu);
        }

        if (closeBtn) {
            closeBtn.addEventListener("click", toggleMenu);
        }
    }

    function setSearchListener() {
        var pageTitle = document.getElementById("page-title");
        var searchBtn = document.getElementById("toggle-search");
        var pageSearch = document.getElementById("page-search");

        if (searchBtn) {
            searchBtn.addEventListener("click", function() {
                searchBtn.classList.toggle("active");
                pageSearch.classList.toggle("show");
                pageTitle.classList.toggle("hide");
            });
        }
    }

    function setAutocompletes() {
        var autocompletes = $(".autocomplete-control");

        if (autocompletes.length) {
            autocompletes.typeahead({
                order: "asc",
                source: {
                    groupName: {
                        data: [
                            "Afghanistan",
                            "Albania",
                            "Algeria",
                            "American Samoa",
                            "Andorra",
                            "Angola",
                            "Anguilla",
                            "Antarctica",
                            "Benin",
                            "Bermuda",
                            "Bhutan",
                            "Bolivia",
                            "Bosnia and Herzegovina",
                            "Botswana",
                            "Bouvet Island",
                            "Brazil",
                            "British Indian Ocean Territory",
                            "Brunei",
                            "Bulgaria",
                            "Burkina Faso",
                            "Burundi",
                            "Cambodia",
                            "Cameroon",
                            "Canada",
                            "Cape Verde",
                            "Cayman Islands",
                            "Central African Republic",
                            "Chad",
                            "Chile",
                            "China",
                            "Egypt",
                            "England",
                            "El Salvador",
                            "Equatorial Guinea",
                            "Eritrea",
                            "Estonia",
                            "Ethiopia",
                            "Falkland Islands",
                            "Faroe Islands",
                            "Fiji Islands",
                            "Finland",
                            "France",
                            "French Guiana",
                            "French Polynesia",
                            "French Southern territories",
                            "Gabon",
                            "Gambia",
                            "Georgia",
                            "Germany",
                            "Ghana",
                            "Gibraltar",
                            "Greece",
                            "Greenland",
                            "Grenada",
                            "Guadeloupe",
                            "Guam",
                            "Iran",
                            "Iraq",
                            "Ireland",
                            "Israel",
                            "Italy",
                            "Jamaica",
                            "Japan",
                            "Jordan",
                            "Kazakstan",
                            "Kenya",
                            "Kiribati",
                            "Kuwait",
                            "Kyrgyzstan",
                            "Laos",
                            "Latvia",
                            "Lebanon",
                            "Lesotho",
                            "Liberia",
                            "Libyan Arab Jamahiriya",
                            "Liechtenstein",
                            "Lithuania",
                            "Luxembourg",
                            "Macao",
                            "Macedonia",
                            "Madagascar",
                            "Malawi",
                            "Malaysia",
                            "Maldives",
                            "Mali",
                            "Malta",
                            "Marshall Islands",
                            "Martinique",
                            "Mauritania",
                            "Mauritius",
                            "Mayotte",
                            "Mexico",
                            "Micronesia, Federated States of",
                            "Moldova",
                            "Monaco",
                            "Mongolia",
                            "Montserrat",
                            "Morocco",
                            "Mozambique",
                            "Myanmar",
                            "Namibia",
                            "Nauru",
                            "Nepal",
                            "Netherlands",
                            "Netherlands Antilles",
                            "New Caledonia",
                            "New Zealand",
                            "Nicaragua",
                            "Niger",
                            "Nigeria",
                            "Niue",
                            "Norfolk Island",
                            "North Korea",
                            "Northern Ireland",
                            "Northern Mariana Islands",
                            "Norway",
                            "Oman",
                            "Pakistan",
                            "Saint Lucia",
                            "Saint Pierre and Miquelon",
                            "Saint Vincent and the Grenadines",
                            "Samoa",
                            "San Marino",
                            "Sao Tome and Principe",
                            "Saudi Arabia",
                            "Scotland",
                            "Senegal",
                            "Seychelles",
                            "Sierra Leone",
                            "Singapore",
                            "Slovakia",
                            "Slovenia",
                            "Solomon Islands",
                            "Somalia",
                            "South Africa",
                            "South Georgia and the South Sandwich Islands",
                            "South Korea",
                            "South Sudan",
                            "Spain",
                            "SriLanka",
                            "Sudan",
                            "Suriname",
                            "Svalbard and Jan Mayen",
                            "Swaziland",
                            "Sweden",
                            "Switzerland",
                            "Syria",
                            "Tajikistan",
                            "Tanzania",
                            "Thailand",
                            "Togo",
                            "Tokelau",
                            "Tonga",
                            "Trinidad and Tobago",
                            "Tunisia",
                            "Turkey",
                            "Turkmenistan",
                            "Turks and Caicos Islands",
                            "Tuvalu",
                            "Uganda",
                            "Ukraine"
                        ]
                    }
                }
            });

            $(".input-group").each(function() {
                var el = $(this);

                var suffix = el.find(".input-group-append");

                if (suffix.length) {
                    var cancelBtn = el.find(".typeahead__cancel-button");
                    cancelBtn.remove();
                }
            });
        }
    }

    function menu() {
        var menu = $(".app-menu");

        menu.on("click", ".item-link", function(e) {
            var $this = $(this),
                li = $this.parent();

            var sub = li[0].children[1];
            if (li.hasClass("has-sub")) {
                e.preventDefault();

                if (li.hasClass("active")) {
                    li.removeClass("active");
                    sub.style.maxHeight = null;
                } else {
                    li.addClass("active");
                    sub.style.maxHeight = sub.scrollHeight + "px";
                }
            }
        });
    }

    //Window Resize
    (function() {
        var delay = (function() {
            var timer = 0;
            return function(callback, ms) {
                clearTimeout(timer);
                timer = setTimeout(callback, ms);
            };
        })();

        //Functions
        function resizeFunctions() {}

        if (isTouchDevice) {
            $(window).bind("orientationchange", function() {
                delay(function() {
                    resizeFunctions();
                }, 50);
            });
        } else {
            $(window).on("resize", function() {
                delay(function() {
                    resizeFunctions();
                }, 50);
            });
        }
    })();
})();

// Charts

function setTravelChart() {
    var data = [35, 89, 15];

    var chart = document.getElementById("travel-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["Monday", "Tuesday"],
                datasets: [{
                    borderColor: "rgba(6, 30, 56,0.5)",
                    borderWidth: 0,
                    backgroundColor: "rgba(6, 30, 56,0.5)",
                    data: data,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                bezierCurve: true,
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setSalesChart() {
    var data = [1208, 1859, 4680, 5400, 7507, 8736, 10230];

    var chart = document.getElementById("sales");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    borderColor: "#ff6a07",
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                bezierCurve: true,
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setPayoutsChart() {
    var data = [2859, 2345, 4704, 6300, 7507, 8736, 7305];

    var chart = document.getElementById("payouts");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    borderColor: "#e24d4d",
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                bezierCurve: true,
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setDataSalesChart() {
    var data = [112, 99, 122, 144, 112, 121, 135];

    var chart = document.getElementById("sales-data");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["Germany", "USA", "France", "Canada", "UK", "Ukraine", "Russia"],
                datasets: [{
                    backgroundColor: "#FF8534",
                    borderRadius: 20,
                    curvature: 1,
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                bezierCurve: true,
                scales: {
                    xAxes: [{
                        barPercentage: 0.5,
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setUsersChart() {
    var data = [112, 100];

    var chart = document.getElementById("users-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "doughnut",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    backgroundColor: ["#FF8534", "#e24d4d"],
                    borderWidth: 0,
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                cutoutPercentage: 90,
                legend: false,
                elements: {
                    line: {
                        tension: 0
                    }
                },
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setGoalsChart() {
    var data = [73, 37];

    var chart = document.getElementById("goals-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "doughnut",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],

                datasets: [{
                    backgroundColor: ["#e24d4d", "#FF8534"],
                    borderWidth: 0,
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                cutoutPercentage: 90,
                maintainAspectRatio: false,
                legend: false,
                elements: {
                    line: {
                        tension: 0
                    }
                },
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setStatisticChart() {
    var data = [4500, 3859, 5906];

    var chart = document.getElementById("statistic-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "polarArea",
            data: {
                datasets: [{
                    labels: ["Income", "Expenses", "Total"],
                    borderColor: ["#e24d4d", "#FF8534", "#50bd35"],
                    data: data,
                    pointRadius: 0
                }]
            },
            options: {
                maintainAspectRatio: false,
                legend: false,
                scale: {
                    ticks: {
                        display: false
                    }
                }
            }
        });
    }
}

function setTrafficChart() {
    var data = [{
            data: [65, 59, 80, 81, 56, 55, 40],
            label: "Direct",
            color: "#FF8534"
        },
        {
            data: [28, 48, 40, 19, 86, 27, 90],
            label: "Referral",
            color: "#64b5f6"
        }
    ];

    var datasets = function(dataset) {
        return dataset.map(function(el) {
            return {
                label: el.label,
                data: el.data,
                backgroundColor: el.color
            };
        });
    };

    var chart = document.getElementById("traffic-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["2012", "2013", "2014", "2015", "2016", "2017", "2018"],
                datasets: datasets(data)
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                bezierCurve: true,
                scales: {
                    xAxes: [{
                        ticks: {
                            fontColor: "white"
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            fontColor: "white"
                        }
                    }]
                }
            }
        });
    }
}

function setOverviewChart() {
    var data = [{
            data: [92, 83, 80, 81, 56, 55, 30],
            label: "Site A"
        },
        {
            data: [28, 48, 50, 62, 65, 70, 90],
            label: "Site B"
        },
        {
            data: [18, 48, 77, 9, 100, 27, 40],
            label: "Site C"
        }
    ];

    var colors = [{
            backgroundColor: "transparent",
            borderColor: "#e24d4d",
            pointBackgroundColor: "#fff",
            pointBorderColor: "#e24d4d",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "#e24d4d"
        },
        {
            backgroundColor: "transparent",
            borderColor: "#FF8534",
            pointBackgroundColor: "#fff",
            pointBorderColor: "#FF8534",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "#FF8534"
        },
        {
            backgroundColor: "transparent",
            borderColor: "#81c784",
            pointBackgroundColor: "#fff",
            pointBorderColor: "#81c784",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "#81c784"
        }
    ];

    var datasets = function(dataset) {
        return dataset.map(function(el, i) {
            return Object.assign({}, el, colors[i]);
        });
    };

    var chart = document.getElementById("overview-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["2012", "2013", "2014", "2015", "2016", "2017", "2018"],
                fill: false,
                datasets: datasets(data)
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                bezierCurve: true,
                scales: {
                    xAxes: [{
                        ticks: {
                            fontColor: "white"
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            fontColor: "white"
                        }
                    }]
                }
            }
        });
    }
}

function setPageViewChart() {
    var data = [992, 3859, 5906, 3305, 7507, 5415, 1200];

    var chart = document.getElementById("page-views");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    borderColor: "#ff6a07",
                    data: data,
                    borderWidth: 1,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                bezierCurve: true,
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setFinancialSalesChart() {
    var data = [112, 80, 122, 144, 112, 80, 135];

    var chart = document.getElementById("sales-stats");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    backgroundColor: ["#FF8534", "#e24d4d", "#50BD35", "#FF8534", "#e24d4d", "#50BD35", "#FF8534"],
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false,
                            beginAtZero: true
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setSalesChart2() {
    var data = [112, 80, 122, 144, 112, 80, 135];

    var chart = document.getElementById("sales-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    backgroundColor: "#FF8534",
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false,
                            beginAtZero: true
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setViewsChart() {
    var data = [992, 3859, 5906, 3305, 7507, 5415, 1200];

    var chart = document.getElementById("views-stats");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    borderColor: "#FF8534",
                    backgroundColor: "#FF8534",
                    borderWidth: 2,
                    data: data,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                bezierCurve: true,
                legend: false,
                elements: {
                    line: {
                        tension: 0.5
                    }
                },
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function mergeWithColors(data, colors) {
    return data.map(function(el, i) {
        var index = i % colors.length;
        return Object.assign(el, colors[index]);
    });
}

function setAudienceChart() {
    var colors = [{
            backgroundColor: "transparent",
            borderColor: "#e2829c",
            pointBackgroundColor: "#fff",
            pointBorderColor: "#e2829c",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "#e2829c"
        },
        {
            backgroundColor: "transparent",
            borderColor: "#FF8534",
            pointBackgroundColor: "#fff",
            pointBorderColor: "#FF8534",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "#FF8534"
        },
        {
            backgroundColor: "transparent",
            borderColor: "#64b5f6",
            pointBackgroundColor: "#fff",
            pointBorderColor: "#64b5f6",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "#64b5f6"
        }
    ];
    var chart = document.getElementById("audience-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var data = [{
                data: [92, 83, 80, 81, 56, 55, 30],
                label: "Site A"
            },
            {
                data: [28, 48, 50, 62, 65, 70, 90],
                label: "Site B"
            },
            {
                data: [18, 48, 77, 9, 100, 27, 40],
                label: "Site C"
            }
        ];

        var audienceChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: mergeWithColors(data, colors)
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                scales: {
                    yAxes: [{
                        color: "#fff",
                        ticks: {
                            beginAtZero: true,
                            fontColor: "#fff"
                        }
                    }],
                    xAxes: [{
                        color: "#fff",
                        ticks: {
                            fontColor: "#fff"
                        }
                    }]
                }
            }
        });
    }
}

function setDevelopmentChart() {
    var data = [{
        data: [65, 59, 80, 81, 56, 55, 40],
        label: "Direct"
    }, {
        data: [28, 48, 40, 19, 86, 27, 90],
        label: "Referral"
    }];
    var chart = document.getElementById("dev-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var colors = [{
                backgroundColor: "#64b5f6"
            },
            {
                backgroundColor: "#FF8534"
            }
        ];

        var devChart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["2012", "2013", "2014", "2015", "2016", "2017", "2018"],
                datasets: mergeWithColors(data, colors)
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                scaleShowVerticalLines: false,
                scales: {
                    yAxes: [{
                        color: "#fff",
                        ticks: {
                            beginAtZero: true,
                            fontColor: "#fff"
                        }
                    }],
                    xAxes: [{
                        color: "#fff",
                        ticks: {
                            fontColor: "#fff"
                        }
                    }]
                }
            }
        });
    }
}

function setBestSellingChart() {
    var colors = [{
            backgroundColor: "#e24d4d"
        },
        {
            backgroundColor: "#ff6a07"
        },
        {
            backgroundColor: "#50BD35"
        }
    ];
    var data = [{
            name: "Women bags",
            value: 64
        },
        {
            name: "Women shoes",
            value: 22
        },
        {
            name: "Accessories",
            value: 14
        }
    ];

    var chart = document.getElementById("best-sells-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "doughnut",
            data: {
                labels: ["Women bags", "Women shoes", "Accesories"],
                datasets: [{
                    borderWidth: 0,
                    backgroundColor: ["#e24d4d", "#ff6a07", "#50BD35"],
                    data: [647, 326, 160]
                }]
            },
            options: {
                legend: false,
                cutoutPercentage: 90
            }
        });
    }
}

function setDataSalesChart() {
    var data = [112, 99, 122, 144, 112, 99, 135];

    var chart = document.getElementById("sales-data");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["Germany", "USA", "France", "Canada", "UK", "Ukraine", "Russia"],
                datasets: [{
                    backgroundColor: "#FF8534",
                    borderRadius: 20,
                    curvature: 1,
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: false,
                bezierCurve: true,
                scales: {
                    xAxes: [{
                        barPercentage: 0.15,
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setEarningsChart() {
    var data = [1030, 3376, 4205, 1505, 3654, 1915];

    var chart = document.getElementById("earnings-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    borderColor: "#FF8534",
                    borderWidth: 2,
                    data: data,
                    fill: false,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                bezierCurve: true,
                legend: false,
                elements: {
                    line: {
                        tension: 0
                    }
                },
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function setBalanceChart() {
    var data = [2030, 3376, 4205, 3505, 3654, 4915];

    var chart = document.getElementById("balance-chart");

    if (chart) {
        var ctx = chart.getContext("2d");
        var sellsChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
                datasets: [{
                    borderColor: "#FF8534",
                    backgroundColor: "#FF8534",
                    borderWidth: 2,
                    data: data,
                    pointRadius: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                bezierCurve: true,
                legend: false,
                elements: {
                    line: {
                        tension: 0
                    }
                },
                scales: {
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            display: false
                        },
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false //<- set this
                        }
                    }]
                }
            }
        });
    }
}

function initMorrisCharts() {
    var data = [{
                y: "2014",
                a: 50,
                b: 90
            },
            {
                y: "2015",
                a: 65,
                b: 75
            },
            {
                y: "2016",
                a: 50,
                b: 50
            },
            {
                y: "2017",
                a: 75,
                b: 60
            },
            {
                y: "2018",
                a: 80,
                b: 65
            },
            {
                y: "2019",
                a: 90,
                b: 70
            },
            {
                y: "2020",
                a: 100,
                b: 75
            },
            {
                y: "2021",
                a: 115,
                b: 75
            },
            {
                y: "2022",
                a: 120,
                b: 85
            },
            {
                y: "2023",
                a: 145,
                b: 85
            },
            {
                y: "2024",
                a: 160,
                b: 95
            }
        ],
        config = {
            data: data,
            xkey: "y",
            ykeys: ["a", "b"],
            labels: ["Total Income", "Total Outcome"],
            fillOpacity: 0.6,
            hideHover: "always",
            behaveLikeLine: true,
            resize: true,
            pointStrokeColors: ["#fff"],
            barColors: ["#64b5f6", "#FF8534"],
            lineColors: ["#FF8534", "#64b5f6", "#81c784"]
        };

    var morrrisChart = document.getElementById("morris-area-chart");

    if (morrrisChart) {
        config.element = "morris-area-chart";
        Morris.Area(config);
        config.element = "morris-line-chart";
        Morris.Line(config);
        config.element = "morris-bar-chart";
        Morris.Bar(config);
        config.element = "morris-stacked";
        config.stacked = true;
        Morris.Bar(config);
        Morris.Donut({
            element: "morris-pie-chart",
            resize: true,
            labelColor: "#FFF",
            colors: ["#FF8534", "#64b5f6", "#07223e", "#e24d4d"],
            data: [{
                    label: "Sales",
                    value: 30
                },
                {
                    label: "Income",
                    value: 15
                },
                {
                    label: "Capital",
                    value: 45
                },
                {
                    label: "Expenses",
                    value: 10
                }
            ]
        });
    }
}

function initEcharts() {
    var areaChartContainer = document.getElementById("echarts-area"),
        barChartContainer = document.getElementById("echarts-bar"),
        lineChartContainer = document.getElementById("echarts-line"),
        withPointsContainer = document.getElementById("echarts-with-points"),
        pieContainer = document.getElementById("echarts-pie"),
        holeContainer = document.getElementById("echarts-hole");

    if (areaChartContainer) {
        var area = echarts.init(areaChartContainer, {
                width: "100%"
            }),
            bar = echarts.init(barChartContainer),
            line = echarts.init(lineChartContainer),
            withPoints = echarts.init(withPointsContainer),
            pie = echarts.init(pieContainer),
            hole = echarts.init(holeContainer);

        area.setOption(getAreaOptions());
        bar.setOption(getBarOptions());
        line.setOption(getLineOptions());
        withPoints.setOption(getLine2Options());
        pie.setOption(getPieOptions());
        hole.setOption(getPie2Options());

        window.addEventListener("resize", function() {
            area.resize();
            bar.resize();
            line.resize();
            withPoints.resize();
            pie.resize();
            hole.resize();
        });
    }
}

function getLineOptions() {
    return {
        grid: {
            left: 0,
            right: 0,
            bottom: 0,
            containLabel: true
        },
        xAxis: {
            axisLabel: {
                color: "#fff"
            },
            axisLine: {
                lineStyle: {
                    color: "rgba(255,255,255, .6)"
                }
            },
            type: "category",
            data: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
        },
        yAxis: {
            axisLabel: {
                color: "#fff"
            },
            axisLine: {
                lineStyle: {
                    color: "rgba(255,255,255, .6)"
                }
            },
            type: "value"
        },
        series: [{
            data: [350, 933, 1184, 857, 1167, 1330, 1035],
            type: "line",
            lineStyle: {
                normal: {
                    color: "#64b5f6"
                }
            }
        }]
    };
}

function getLine2Options() {
    return {
        grid: {
            left: 0,
            right: 0,
            bottom: 0,
            containLabel: true
        },
        xAxis: {
            axisLabel: {
                color: "#fff"
            },
            axisLine: {
                lineStyle: {
                    color: "rgba(255,255,255, .6)"
                }
            },
            type: "category",
            data: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
        },
        legend: {
            textStyle: {
                color: "#fff"
            }
        },
        yAxis: {
            axisLabel: {
                color: "#fff"
            },
            axisLine: {
                lineStyle: {
                    color: "rgba(255,255,255, .6)"
                }
            },
            type: "value"
        },
        series: [{
            data: [120, 200, 150, 80, 70, 110, 130],
            type: "line",
            symbol: "triangle",
            symbolSize: 20,
            lineStyle: {
                normal: {
                    color: "#cd5447",
                    width: 4,
                    type: "dashed"
                }
            },
            itemStyle: {
                normal: {
                    borderWidth: 1,
                    borderColor: "#9d5ce5",
                    color: "#9d5ce5"
                }
            }
        }]
    };
}

function getAreaOptions() {
    return {
        color: ["#81c784", "#ffb74d", "#e24d4d", "#64b5f6", "#FF771D"],
        tooltip: {
            trigger: "axis",
            axisPointer: {
                type: "cross"
            }
        },
        legend: {
            data: ["X-1", "X-2", "X-3", "X-4", "X-5"],
            textStyle: {
                color: "#fff"
            }
        },
        grid: {
            left: 0,
            right: 0,
            bottom: 0,
            containLabel: true
        },
        xAxis: [{
            axisLine: {
                lineStyle: {
                    color: "rgba(255,255,255, .6)"
                }
            },
            axisLabel: {
                color: "#fff"
            },
            type: "category",
            boundaryGap: false,
            data: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
        }],
        yAxis: [{
            axisLine: {
                lineStyle: {
                    color: "rgba(255,255,255, .6)"
                }
            },
            axisLabel: {
                color: "#fff"
            },
            type: "value"
        }],
        series: [{
                name: "X-1",
                type: "line",
                stack: "counts",
                areaStyle: {
                    normal: {}
                },
                data: [120, 132, 101, 134, 90, 230, 210]
            },
            {
                name: "X-2",
                type: "line",
                stack: "counts",
                areaStyle: {
                    normal: {}
                },
                data: [220, 182, 191, 234, 290, 330, 310]
            },
            {
                name: "X-3",
                type: "line",
                stack: "counts",
                areaStyle: {
                    normal: {}
                },
                data: [150, 232, 201, 154, 190, 330, 410]
            },
            {
                name: "X-4",
                type: "line",
                stack: "counts",
                areaStyle: {
                    normal: {}
                },
                data: [320, 332, 301, 334, 390, 330, 320]
            },
            {
                name: "X-5",
                type: "line",
                stack: "counts",
                label: {
                    normal: {
                        show: true,
                        position: "top"
                    }
                },
                areaStyle: {
                    normal: {}
                },
                data: [820, 932, 901, 934, 1290, 1330, 1320]
            }
        ]
    };
}

function getBarOptions() {
    var barXAxisData = [];
    var barData1 = [];
    var barData2 = [];

    for (var i = 0; i < 100; i++) {
        barXAxisData.push("Prod. " + i);
        barData1.push((Math.sin(i / 5) * (i / 5 - 10) + i / 6) * 5);
        barData2.push((Math.cos(i / 5) * (i / 5 - 10) + i / 6) * 5);
    }
    return {
        color: ["#ffb74d", "#64b5f6"],
        legend: {
            textStyle: {
                color: "#fff"
            },
            data: ["USA", "UK"],
            align: "left"
        },
        tooltip: {},
        grid: {
            left: 0,
            right: 0,
            bottom: 0,
            containLabel: true
        },
        xAxis: {
            axisLabel: {
                color: "#fff"
            },
            axisLine: {
                lineStyle: {
                    color: "rgba(255,255,255, .6)"
                }
            },
            data: barXAxisData,
            silent: false,
            splitLine: {
                show: false
            }
        },
        yAxis: {
            axisLabel: {
                color: "#fff"
            },
            axisLine: {
                lineStyle: {
                    color: "rgba(255,255,255, .6)"
                }
            }
        },
        series: [{
                name: "USA",
                type: "bar",
                data: barData1,
                animationDelay: function(idx) {
                    return idx * 10;
                }
            },
            {
                name: "UK",
                type: "bar",
                data: barData2,
                animationDelay: function(idx) {
                    return idx * 10 + 100;
                }
            }
        ],
        animationEasing: "elasticOut",
        animationDelayUpdate: function(idx) {
            return idx * 5;
        }
    };
}

function getPieOptions() {
    return {
        tooltip: {
            trigger: "item",
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        grid: {
            left: 0,
            right: 0,
            bottom: 0,
            containLabel: true
        },
        color: ["#FF924A"],
        visualMap: {
            show: false,
            min: 80,
            max: 600,
            inRange: {
                colorLightness: [0, 1]
            }
        },
        series: [{
            name: "Schedule",
            type: "pie",
            radius: "90%",
            center: ["50%", "50%"],
            data: [{
                value: 335
            }, {
                value: 310
            }, {
                value: 274
            }, {
                value: 235
            }, {
                value: 400
            }].sort(function(a, b) {
                return a.value - b.value;
            }),
            roseType: "radius",
            label: {
                show: false
            },
            itemStyle: {
                normal: {
                    color: ["#FF771D"]
                }
            },

            animationType: "scale",
            animationEasing: "elasticOut",
            animationDelay: function(idx) {
                return Math.random() * 200;
            }
        }]
    };
}

function getPie2Options() {
    return {
        tooltip: {
            trigger: "item",
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            textStyle: {
                color: "#fff"
            },
            x: "center",
            y: "bottom",
            data: ["Ex.1", "Ex.2", "Ex.3", "Ex.4", "Ex.5", "Ex.6", "Ex.7", "Ex.8"]
        },
        grid: {
            left: 0,
            right: 0,
            bottom: 0,
            containLabel: true
        },
        series: [{
            name: "area",
            type: "pie",
            radius: [30, 110],
            roseType: "area",
            data: [{
                    value: 10,
                    name: "Ex.1"
                },
                {
                    value: 5,
                    name: "Ex.2"
                },
                {
                    value: 15,
                    name: "Ex.3"
                },
                {
                    value: 25,
                    name: "Ex.4"
                },
                {
                    value: 20,
                    name: "Ex.5"
                },
                {
                    value: 35,
                    name: "Ex.6"
                },
                {
                    value: 30,
                    name: "Ex.7"
                },
                {
                    value: 40,
                    name: "Ex.8"
                }
            ]
        }]
    };
}

function initChartJs() {
    var linearChart = document.getElementById("linear-chart");
    var barsChart = document.getElementById("bars-chart");
    var doughnutChart = document.getElementById("doughnut-chart");
    var radarChart = document.getElementById("radar-chart");
    var areaChart = document.getElementById("area-chart");

    if (linearChart && barsChart && doughnutChart && radarChart && areaChart) {
        setLinearChart(linearChart.getContext("2d"));
        setBarsChart(barsChart.getContext("2d"));
        setDoughnutChart(doughnutChart.getContext("2d"));
        setRadarChart(radarChart.getContext("2d"));
        setAreaChart(areaChart.getContext("2d"));
    }
}

function setLinearChart(ctx) {
    var data = [{
            data: [65, 59, 80, 81, 56, 55, 40],
            label: "Series A"
        },
        {
            data: [28, 48, 40, 19, 86, 27, 90],
            label: "Series B"
        },
        {
            data: [18, 48, 77, 9, 100, 27, 40],
            label: "Series C"
        }
    ];

    var colors = [{
            backgroundColor: "rgba(255,187,65,0)",
            borderColor: "rgba(255,187,65,1)",
            pointBackgroundColor: "rgba(255,187,65,1)",
            pointBorderColor: "#fff",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(255,187,65,1)"
        },
        {
            backgroundColor: "rgba(226,42,111,0)",
            borderColor: "rgba(226,42,111,1)",
            pointBackgroundColor: "rgba(226,42,111,1)",
            pointBorderColor: "#fff",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(226,42,111,1)"
        },
        {
            backgroundColor: "rgba(80,189,53,0)",
            borderColor: "rgba(80,189,53,1)",
            pointBackgroundColor: "rgba(80,189,53,1)",
            pointBorderColor: "#fff",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(80,189,53,1)"
        }
    ];

    var datasets = function(dataset) {
        return dataset.map(function(el, i) {
            return Object.assign({}, el, colors[i]);
        });
    };

    var chart = new Chart(ctx, {
        type: "line",
        data: {
            labels: ["2012", "2013", "2014", "2015", "2016", "2017", "2018"],
            fill: false,
            datasets: datasets(data)
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            bezierCurve: true,
            scales: {
                xAxes: [{
                    ticks: {
                        fontColor: "white"
                    }
                }],
                yAxes: [{
                    ticks: {
                        fontColor: "white"
                    }
                }]
            }
        }
    });
}

function setBarsChart(ctx) {
    var data = [{
        data: [65, 59, 80, 81, 56, 55, 40],
        label: "Series A"
    }, {
        data: [28, 48, 40, 19, 86, 27, 90],
        label: "Series B"
    }];

    var colors = [{
            backgroundColor: "rgba(226,42,111,.7)",
            borderColor: "rgba(226,42,111,1)"
        },
        {
            backgroundColor: "rgba(255,187,65,0.7)",
            borderColor: "rgba(255,187,65,1)"
        }
    ];

    var datasets = function(dataset) {
        return dataset.map(function(el, i) {
            return Object.assign({}, el, colors[i]);
        });
    };

    var chart = new Chart(ctx, {
        type: "bar",
        data: {
            labels: ["2012", "2013", "2014", "2015", "2016", "2017", "2018"],
            fill: false,
            datasets: datasets(data)
        },
        options: {
            responsive: true,
            scaleShowVerticalLines: false,
            maintainAspectRatio: false,
            scales: {
                xAxes: [{
                    ticks: {
                        fontColor: "white"
                    }
                }],
                yAxes: [{
                    ticks: {
                        fontColor: "white"
                    }
                }]
            }
        }
    });
}

function setRadarChart(ctx) {
    var data = [{
        data: [65, 59, 90, 81, 56, 55, 40],
        label: "Series A"
    }, {
        data: [28, 48, 40, 19, 96, 27, 100],
        label: "Series B"
    }];

    var colors = [{
            backgroundColor: "rgba(255,187,65,0)",
            borderColor: "rgba(255,187,65,1)",
            pointBackgroundColor: "rgba(255,187,65,1)",
            pointBorderColor: "#fff",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(255,187,65,1)"
        },
        {
            backgroundColor: "rgba(226,42,111,0)",
            borderColor: "rgba(226,42,111,1)",
            pointBackgroundColor: "rgba(226,42,111,1)",
            pointBorderColor: "#fff",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(226,42,111,1)"
        },
        {
            backgroundColor: "rgba(80,189,53,0)",
            borderColor: "rgba(80,189,53,1)",
            pointBackgroundColor: "rgba(80,189,53,1)",
            pointBorderColor: "#fff",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(80,189,53,1)"
        }
    ];

    var datasets = function(dataset) {
        return dataset.map(function(el, i) {
            return Object.assign({}, el, colors[i]);
        });
    };

    var chart = new Chart(ctx, {
        type: "radar",
        data: {
            labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
            fill: false,
            datasets: datasets(data)
        },
        options: {
            maintainAspectRatio: false,
            scales: {
                xAxes: [{
                    display: false
                }],
                yAxes: [{
                    display: false
                }]
            }
        }
    });
}

function setDoughnutChart(ctx) {
    var data = [350, 450, 100];

    var chart = new Chart(ctx, {
        type: "doughnut",
        data: {
            labels: ["Download Sales", "In-Store Sales", "Mail-Order Sales"],
            datasets: [{
                backgroundColor: ["#64b5f6", "#e24d4d", "#FFBB41"],
                borderColor: ["#fff"],
                borderWidth: 2,
                data: data,
                fill: false,
                pointRadius: 0
            }]
        },
        options: {
            maintainAspectRatio: false,
            scales: {
                xAxes: [{
                    display: false,
                    ticks: {
                        fontColor: "white"
                    }
                }],
                yAxes: [{
                    display: false,
                    ticks: {
                        fontColor: "white"
                    }
                }]
            }
        }
    });
}

function setAreaChart(ctx) {
    var data = [300, 500, 100, 40, 120];
    var chart = new Chart(ctx, {
        type: "polarArea",
        data: {
            labels: ["2012", "2013", "2014", "2015", "2016", "2017", "2018"],
            fill: false,
            datasets: [{
                backgroundColor: [
                    "rgba(226, 77, 77, .4)",
                    "rgba(100, 181, 246, .4)",
                    "rgba(255, 183, 77, .4)",
                    "rgba(220,220,220, .4)",
                    "rgba(0,255,255, .4)"
                ],
                borderColor: ["rgb(226, 77, 77)", "rgb(100, 181, 246)", "rgb(255, 183, 77)", "rgb(220,220,220)", "rgb(0,255,255)"],
                borderWidth: 2,
                data: data,
                fill: false,
                pointRadius: 0
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            legend: false,
            bezierCurve: true,
            scales: {
                xAxes: [{
                    display: false,
                    ticks: {
                        fontColor: "white"
                    }
                }],
                yAxes: [{
                    display: false,
                    ticks: {
                        fontColor: "white"
                    }
                }]
            }
        }
    });
}

var map;

function initMap() {
    var mapContainer = document.getElementById("map");
    if (mapContainer) {
        map = new google.maps.Map(document.getElementById("map"), {
            center: {
                lat: -34.397,
                lng: 150.644
            },
            zoom: 8
        });
    }
}
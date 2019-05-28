$(document).ready(function () {
	/* AUTO POPUP MODAL
	---------------------------------------------------- */
    //$('#indexModal').modal('show');

	/* MIXITUP START
	---------------------------------------------------- */
    var containerEl = document.querySelector('.mixitUpcontainer');
    var mixer = mixitup(containerEl, {
        load: {
            sort: 'random'
        },
        controls: {
            scope: 'global'
        },
        pagination: {
            limit: 18,
            hidePageStatsIfSinglePage: true
        },
        templates: {
            pager: '<li class="page-item"><a class="page-link ${classNames}" data-page="${pageNumber}">${pageNumber}</a></li>',
            pagerPrev: '<li class="page-item"><a class="page-link ${classNames}" data-page="prev">❮</a></li>',
            pagerNext: '<li class="page-item"><a class="page-link ${classNames}" data-page="next">❯</a></li>'
        },
        selectors: {
            pageList: '.mixitup-pagination'
        }
    });
    // row 4053 mixitup.js commented out (data-toggle)

	/* GET KOMMUNER & MIXITUP 2 START
	---------------------------------------------------- */
    $.getJSON("//app.ungdrive.se/webhooks/4_kommun/json.php", function (response) {
        var items = [];
        var mix = "";
        var other = "";
        for (var i = 0; i < response.length; i++) {
            var kommunURL = response[i].kommun.toLowerCase();
            kommunURL = kommunURL.replace(/ /g, "");
            kommunURL = kommunURL.replace(/å/g, "a");
            kommunURL = kommunURL.replace(/ä/g, "a");
            kommunURL = kommunURL.replace(/ö/g, "o");
            mix += "<div class='col-lg-2 col-md-3 col-sm-4 col-6 mix mixitup-control-kommuner' data-tags='" + response[i].kommun.toLowerCase() + " " + response[i].kickoffShort.toLowerCase() + "'>\n";
            mix += "		<div class='mixWrapper' data-toggle='modal' data-target='#kommunModal'\n";
            mix += "			data-kickoff='" + response[i].kickoff + "'\n";
            mix += "			data-license='" + response[i].license + "'\n";
            mix += "			data-leader='" + response[i].leader + "'\n";
            mix += "			data-licenselink='" + response[i].licenseLink + "'\n";
            mix += "			data-licensemail='" + response[i].licenseMail + "'\n";
            mix += "			data-vimeo='" + response[i].vimeo + "'\n";
            mix += "			data-kommun='" + response[i].kommun + "'\n";
            mix += "			data-arskurser='" + response[i].arskurser + "'\n";
            mix += "			data-infoplats='" + response[i].infotraffPlats + "'\n";
            mix += "			data-infodatum='" + response[i].infotraffDatum + "'\n";
            mix += "			data-kickoffplats='" + response[i].kickoffPlats + "'\n";
            mix += "			data-kickoffdatum='" + response[i].kickoffDatum + "'\n";
            mix += "			data-avslutningplats='" + response[i].avslutningPlats + "'\n";
            mix += "			data-avslutningdatum='" + response[i].avslutningDatum + "'\n";
            mix += "			data-ansokan='" + response[i].ansokan + "'>\n";
            mix += "		<img class='img-fluid' src='//ungdrive.se/img/kommuner/" + kommunURL + ".png'>\n";
            mix += "	</div>\n";
            mix += "</div>\n";
            items.unshift(mix);
            mix = "";
        }
        other += "<div id='otherKommun' class='col-lg-2 col-md-3 col-sm-4 col-6 mix mixitup-control-kommuner' data-tags='Öö'>\n";
        other += "	<a href='//ungdrive.se/kontakt'>\n";
        other += "		<div class='mixWrapper'>\n";
        other += "			<img class='img-fluid' src='//ungdrive.se/img/kommuner/saknas.png'>\n";
        other += "		</div>\n";
        other += "	</a>\n";
        other += "</div>\n";
        items.push(other);
        $("#kommunWrapper").append(items);
    }).done(function () {
        fnInitializeKommuner();
    });
    var fnInitializeKommuner = function () {
        var container = document.querySelector('[data-ref="kommuner"]');
        var inputSearch = document.querySelector('[data-ref="kommun-search"]');
        var keyupTimeout;
        var mixer = mixitup(container, {
            controls: {
                scope: 'global'
            },
            animation: {
                duration: 280,
                //effects: 'stagger(35ms) fade',
                //easing: 'cubic-bezier(0.39, 0.575, 0.565, 1)'
                effects: 'fade translateX(100%)',
                reverseOut: false,
                nudge: false
            },
            load: {
                sort: 'tags:asc'
            },
            templates: {
                pager: '<li class="page-item"><a class="mixitup-control-kommuner page-link ${classNames}" data-page="${pageNumber}">${pageNumber}</a></li>',
                pagerPrev: '<li class="page-item"><a class="mixitup-control-kommuner page-link ${classNames}" data-page="prev">❮</a></li>',
                pagerNext: '<li class="page-item"><a class="mixitup-control-kommuner page-link ${classNames}" data-page="next">❯</a></li>'
            },
            pagination: {
                limit: 12,
                hidePageStatsIfSinglePage: true
            },
            selectors: {
                pageList: '.mixitup-pagination-2',
                control: '.mixitup-control-kommuner'
            },
            callbacks: {
                onMixClick: function () {
                    if (this.matches('[data-filter]')) {
                        inputSearch.value = '';
                    }
                }
            }
        });
        inputSearch.addEventListener('keyup', function () {
            var searchValue;
            if (inputSearch.value.length < 1) {
                searchValue = '';
            } else {
                searchValue = inputSearch.value.toLowerCase().trim();
            }
            clearTimeout(keyupTimeout);
            keyupTimeout = setTimeout(function () {
                classValue = 'Öö ' + searchValue;
                document.getElementById("otherKommun").setAttribute("data-tags", classValue);
                filterByString(searchValue);
            }, 350);
        });
        function filterByString(searchValue) {
            if (searchValue) {
                mixer.filter('[data-tags*="' + searchValue + '"]');
            } else {
                mixer.filter('all');
            }
        }
    }

	/* Start/Stop VIMEO on Modal open/close -->
	---------------------------------------------------- */
    var iframe = $('#vimeo-player')[0];
    var player = $f(iframe);
    $('#introModal').on('shown.bs.modal', function (e) {
        player.api('play');
    });
    $('#introModal').on('hide.bs.modal', function (e) {
        player.api('pause');
    });
});

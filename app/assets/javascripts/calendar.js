$(document).ready(function() {
    var select = function(start, end, allDay) {
        var title = window.prompt("title");
        var data = {event: {title: title,
                            start: start,
                            end: end,
                            allDay: allDay
                            },
                    };
        $.ajax({
            type: "POST",
            url: "/calevents",
            data: data,
            success: function() {
                calendar.fullCalendar('refetchEvents');}
        });
        calendar.fullCalendar('unselect');
    };

    var calendar = $('#calendar').fullCalendar({
        header: {
            left: '',
            // month agendaWeek agendaDay
            center: 'title',
            right: 'prev,next today'
        },
        // lang: 'ja'
        firstDay:1,
        allDaySlot: true,
        allDayText: '終日',
        slotMinutes: 15,
        snapMinutes: 15,
        year: 2016,
        month: 12,
        day: 31,
            columnFormat: {
                month: 'ddd',
                week: "d'('ddd')'",
                day: "d'('ddd')'"
            },
            titleFormat: {
                month: 'YYYY年M月',
                week: "YYYY年M月d日{ ~ }{[yyyy年]}{[M月]d日}",
                day: "YYYY年M月d日(ddd)"
            },
            buttonText: {
                today: '今日',
                month: '月',
                week:  '週',
                day:   '日'
            },
            monthNames: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
            monthNamesShort: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
            dayNames: ['日曜日', '月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日'],
            dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
        events: {
            url: '/calevents.json',
            type: "GET",
            data: { combination_id: combination_id }
        },
        dayClick: false,
        // axisFormat: false,
        // slotDuration: false,
        selectable: true,
        selectHelper: true,
        ignoreTimezone: false,
        select: select
    });


});
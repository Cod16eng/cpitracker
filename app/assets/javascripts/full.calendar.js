function eventCalendar() {
  return $('#calendar').fullCalendar({
    eventSources: [{
    url: '/webinars.json',
    }],

    header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
    selectable: true,
    selectHelper: true,
    editable: true,
    eventLimit: true,
    eventColor: '#0d61b5',
    eventTextColor: '#fff',
    timeFormat: 'H(:mm)',
    eventRender: function(event, element)
{
    element.find('.fc-title').append("<br/> by: " + event.user);
    element.find('.fc-time').append("<br/>");
    
}
  });
};
function clearCalendar() {
  $('#calendar').fullCalendar('delete'); // In case delete doesn't work.
  $('#calendar').html('');
};
$(document).on('turbolinks:load', eventCalendar);
$(document).on('turbolinks:before-cache', clearCalendar)

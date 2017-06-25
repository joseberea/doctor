
<script type="text/javascript">
	$(document).ready(function() {
		// page is ready
		$('#calendar').fullCalendar({
			// enable theme
			theme : true,
			// emphasizes business hours
			businessHours : true,
			// event dragging & resizing
			editable : true,
			// header
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			events : [
			// all day event
			{
				title : 'Meeting',
				start : '2017-06-22'
			} ],
			dayClick : function() {
				alert('a day has been clicked!');
			},
			eventClick : function(event, element) {

				event.title = "CLICKED!";
				$('#calendar').fullCalendar('updateEvent', event);

			},
			eventDrop : function(event, delta, revertFunc) {

				alert(event.title + " was dropped on " + event.start.format());

				if (!confirm("Are you sure about this change?")) {
					revertFunc();
				}

			}
		})
	});
</script>
<div id='calendar'></div>
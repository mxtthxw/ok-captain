$('.follow-button').click(function() {
	$(this).replaceWith( '<button type="button" class="unfollow-button" follow_path="@follow" method=":delete" data-remote="true">Unfollow This Boat</button>' )
});

$('.unfollow-button').click(function() {
	$(this).replaceWith( '<button type="button" class="follow-button" controller="follows" action="create" boat_id="@boat.id" remote="true">Follow This Boat' )
});

// alert("hi") works here, but these two functions don't
require ("sinatra")



get "/" do
	'<form action= "/movie" method="Post">
		<label> Your favorite film:</label>
		<input type="text" name="favorite_film" placeholder="Insert favorite film here">
		<br>

		<label>Your least favorite film</label>
		<input type="text" name="least_favorite_film" placeholder="Insert your least favorite film here">
		<button type="submit">Submit me!</button>
	</form>'
end 

post "/movie" do
	"your favorite film is: #{params[:favorite_film]} <br>
	your favorite food is: #{params[:least_favorite_film]}"	
end
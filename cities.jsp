<%
	String [] book = new String[16];
	
	book[0] = "Creating Your own Destiny";
	book[1] = "Dummies";
	book[2] = "The Human Interface";
	book[3] = "A city of ghosts";
	book[4] = "Double Shot";
	book[5] = "The boy with Golden heart";
	book[6] = "The Great Reset";
	book[7] = "The urantia Book";
	book[8] = "The biochar Revolution";
	book[9] = "Jagannath";
	book[10] = "Sea Creatures";
	book[11] = "Closing the Innovation Gap";
	book[12] = "Deep water";
	book[13] = "Charlottes Web";
	book[14] = "The Rebels of the Sand";
	book[15] = "The Panthers Legacy";
	
	
	
	//read user input
	String city = request.getParameter("q");  //q is the name of the parameter from AJAX call

	//I am using UL/LI to return the data to xmlHttp object. Could be anything.
	String result = "<UL>";
	for (String currentCity : book)   //new for loop
	{
		if (currentCity.contains(city))
		{
			result += "<LI>" + currentCity + "</LI>";
		}
	}
	result += "</UL>";
	
	out.println(result);   //send this to xmlHttp object
%>

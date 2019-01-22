json.array! @homes, partial: 'homes/home', as: :home
function switchLanguageTab(btnName, languageName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    /* UPDATE TAB LINK */
	
    // Get all elements with class="code_tab_link" and remove the class "active"
    tablinks = document.getElementsByClassName("code_tab_link");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" isActive", "");
    }
	// Activate the button that was pressed
	document.getElementById(btnName).classList.add("isActive");
	
	
	/* UPDATE TAB CONTENT */
	 
    // Get all elements with class="tabcontent" and hide them
	var codePens = document.getElementsByClassName("code_tab");
	for(var i = 0; i < codePens.length; i++)
	{
		codePens.item(i).classList.remove("code_tab_visible");//.add(".code_tab_invisible")//.style.display = "none";
		codePens.item(i).classList.add("code_tab_invisible");
	}
	
    // Show the current tab, and add an "isActive" class to the button that opened the tab
    document.getElementById(languageName).classList.remove("code_tab_invisible");
	document.getElementById(languageName).classList.add("code_tab_visible");
	
	document.getElementById(languageName+"_desc").classList.remove("code_tab_invisible");
	document.getElementById(languageName+"_desc").classList.add("code_tab_visible");
	
}
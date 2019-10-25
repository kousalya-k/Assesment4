package Local;

public class event {


private String event_name;
private String event_location;
private String event_description;
private String event_contact;

public event(String event_name, String event_location, String event_description, String event_contact) {
	super();
	this.event_name = event_name;
	this.event_location = event_location;
	this.event_description = event_description;
	this.event_contact = event_contact;
}

public String getEvent_name() {
	return event_name;
}

public void setEvent_name(String event_name) {
	this.event_name = event_name;
}

public String getEvent_location() {
	return event_location;
}

public void setEvent_location(String event_location) {
	this.event_location = event_location;
}

public String getEvent_description() {
	return event_description;
}

public void setEvent_description(String event_description) {
	this.event_description = event_description;
}

public String getEvent_contact() {
	return event_contact;
}

public void setEvent_contact(String event_contact) {
	this.event_contact = event_contact;
}

}
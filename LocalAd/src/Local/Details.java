package Local;

public class Details {
  private	String title;
  private 	String city;
  private	String desc;
  private String code;
  private String email;
  private String no;
  public Details() {}
public Details(String title, String city, String desc, String code, String email, String no) {
	super();
	this.title = title;
	this.city = city;
	this.desc = desc;
	this.code = code;
	this.email = email;
	this.no = no;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getDesc() {
	return desc;
}
public void setDesc(String desc) {
	this.desc = desc;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getNo() {
	return no;
}
public void setNo(String no) {
	this.no = no;
}

}

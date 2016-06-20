package MissDial;


public class MissDial {

	private String number;
		
	private String datetime;// Declare datetime of caller
		
	private String circle;// declare the area from where caller called
		
	private String operator;// shows the caller opreator
		
	private String dnd;// define that number is dnd or not
		
	private String prefix;// define the country code
		 		
		 
	public  MissDial(String Number,String Datetime,String Circle,String Operator,String Dnd,String Prefix){
		number=Number;
		datetime=Datetime;
		circle=Circle;
		operator=Operator;
		dnd=Dnd;
		prefix=Prefix;
		
		}
		
	public  MissDial(String Number,String Datetime){
		number=Number;
		datetime=Datetime;		
		}
		 
	public  MissDial(String Number){
		number=Number;		
		}
		 
	public String getNumber(){
		return number;
		}
	public void setNumber(String newValue){
		number=newValue;
		}
		 
		 
	public String getDatetime(){
		return datetime;
		}
	public void setDatenumber(String newValue){
		datetime=newValue;
		}
	public String getCircle(){
	    return circle;
		}
	public void setCircle(String newValue){
		circle= newValue;
		}
	public String getOperator(){
		return operator;
		}
	public void setOperator(String newValue){
		operator=newValue;
		}
	public String getDnd(){
		return dnd;
		}
	public void setDnd(String newValue){
		dnd=newValue;
		}
	public String setPrefix(){
		return prefix;
		}
	public void getPrefix(String newValue){
		newValue=prefix;
		}
 
}


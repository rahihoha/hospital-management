class UserLogin
{
	Long id
	String userName
String password
String empId
String securityQues
String securityAns


String toString(){
	"$userName"
}
static def constraints = {
	
    userName(blank:false)	
	password(blank:false)		
	empId(blank:false,matches:"[0-9]+")
	securityQues(blank:false)		
	securityAns(blank:false)		

}
}
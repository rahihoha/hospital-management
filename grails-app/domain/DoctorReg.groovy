
public class DoctorReg
{	Long id
	String docName
	String docSex
	String docAge
	String docDept
	String docAdd
	String docNo
	String docEmail
	String docQual
	String docTime
	
	String toString(){
		"$docName"
	}
	static def constraints = {
		docName(blank:false)
		docSex(blank:false)	
		
		docAge(blank:false,matches:"[0-9]+")	
		docDept(blank:false)		
		docNo(blank:false)		
		docAdd(blank:false)		
		docTime(blank:false,matches:"[0-9]+")		
		docQual(blank:false)
		
	
	}
	
	
}

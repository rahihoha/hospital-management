
public class ConsultingPat{
	String patName
	String patSex
	String patAge
	String patDate
	String patAdd
	String patDoc
	String patMobile
	
	
	String toString(){
		"$patName"
	}
	static def constraints = {
		patName(blank:false)
		patAge(blank:false)		
		patAdd(blank:false)		
		patMobile(blank:false,matches:"[0-9]+")		
		patDoc(blank:false)		
		patSex(blank:false)		
		patDate(blank:false)
		
	
	}
	
	
}

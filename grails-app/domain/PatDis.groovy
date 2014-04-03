
public class PatDis
{	Long id
	String patName
	String patSex
	String patAge
	String patDate
	String patDoc
	String patRoomT
	String patRoom
	String patAdd
	String patMob
	
	String toString(){
		"$patName"
	}
	static def constraints = {
		patName(blank:false)
		patSex(blank:false)	
		
		patAge(blank:false,matches:"[0-9]+")	
		patDate(blank:false)		
		patDoc(blank:false)		
		patRoomT(blank:false)		
		patRoom(blank:false)		
		
		patMob(blank:false,matches:"[0-9]+")		
		patAdd(blank:false)
                
	
	}
	
	
}

import java.lang.Byte
import sun.nio.cs.Surrogate
import javax.mail.*;
import SendMail;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import DateCustom;
import org.springframework.web.multipart.MultipartFile
import java.security.MessageDigest;
import java.util.Random;
import grails.converters.*
class NewRegController {
	def create1 = {
			def newRegInstance = new NewReg()
			def empIdList = NewReg.list( sort:"empId", order:"asc")
			def userList = NewReg.list( sort:"userName", order:"asc")

			println "---------&^(*&^(&^*&^*(&------------------->"+empIdList
			println "---------&^(*&^(&^*&^*(&------------------->"+userList 
			return ['userList':userList,'newRegInstance':newRegInstance,'empIdList':empIdList]

										
	}

	def set =
	{		println "in set"
			def newRegInstance=new NewReg()
			def pass=params.password
			def conf=params.confirmPass
			println "params"+params
			if(pass.equals(conf))
			{	 println "in if"
				println "params.userName"+params.userName

				newRegInstance.userName = params.userName
				newRegInstance.password = params.password
				newRegInstance.empId = params.empId
				newRegInstance.confirmPass = params.confirmPass
				newRegInstance.securityQues = params.securityQues
				newRegInstance.securityAns = params.securityAns


				println "newRegInstance.userName"+newRegInstance.userName
				if(newRegInstance.save(flush:true, failOnError:true))
				{			println "aaaaaaaaaaaaaaaaaaaaa"
				}

				redirect(action:show1,id:newRegInstance.id)
				
			}
			else
				{
				def empIdList = NewReg.list( sort:"empId", order:"asc")
				def userList = NewReg.list( sort:"userName", order:"asc")

				flash.message="confirmed password doesn't match"
				render(view:'create1',model:['empIdList':empIdList,'userList':userList,'newRegInstance':newRegInstance])
				}

	}		        
	def show1=
	{
			def newRegInstance = NewReg.get((params.id).toLong())
		//	def abc = IndUser.findWhere(industryRegMaster:industryRegMasterInstance)
	//		def message="Welcome ${newRegInstance.userName} .You have sucessfuly registered for hospital management system "
			render(view:'show1',model:[ newRegInstance : newRegInstance] )
				
			
	}
}
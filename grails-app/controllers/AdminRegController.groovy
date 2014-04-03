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
class AdminRegController {
	def create1 = {
			def adminRegInstance = new AdminReg()
			def empIdList = AdminReg.list( sort:"empId", order:"asc")
			def userList = AdminReg.list( sort:"userName", order:"asc")

			println "---------&^(*&^(&^*&^*(&------------------->"+empIdList
			println "---------&^(*&^(&^*&^*(&------------------->"+userList 
			return ['userList':userList,'adminRegInstance':adminRegInstance,'empIdList':empIdList]

										
	}

	def set =
	{		println "in set"
			def adminRegInstance=new AdminReg()
			def pass=params.password
			def conf=params.confirmPass
			println "params"+params
			if(pass.equals(conf))
			{	 println "in if"
				println "params.userName"+params.userName

				adminRegInstance.userName = params.userName
				adminRegInstance.password = params.password
				adminRegInstance.empId = params.empId
				adminRegInstance.confirmPass = params.confirmPass
				adminRegInstance.securityQues = params.securityQues
				adminRegInstance.securityAns = params.securityAns


				println "adminRegInstance.userName"+adminRegInstance.userName
				if(adminRegInstance.save(flush:true, failOnError:true))
				{			println "aaaaaaaaaaaaaaaaaaaaa"
				}

				redirect(action:show1,id:adminRegInstance.id)
				
			}
			else
				{
				def empIdList = AdminReg.list( sort:"empId", order:"asc")
				def userList = AdminReg.list( sort:"userName", order:"asc")

				flash.message="confirmed password doesn't match"
				render(view:'create1',model:['empIdList':empIdList,'userList':userList,'adminRegInstance':adminRegInstance])
				}

	}		        
	def show1=
	{
			def adminRegInstance = AdminReg.get((params.id).toLong())
		//	def abc = IndUser.findWhere(industryRegMaster:industryRegMasterInstance)
	//		def message="Welcome ${adminRegInstance.userName} .You have sucessfuly registered for hospital management system "
			render(view:'show1',model:[ adminRegInstance : adminRegInstance] )
				
			
	}
}
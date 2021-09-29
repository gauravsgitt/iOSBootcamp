import UIKit

enum Country: String {
    case america = "America",
     india = "India",
     britain = "Britain",
     japan = "Japan",
     china = "China"
}

enum Department {
    case IOS
    case Android
    case JVM
    case FullStack
    case Web
}


struct Personal {
    var employeeID: Int
    var name: String
    var country: Country
    var address: String
    var hobbies: String?
}

struct Professional {
    var employeeID: Int
    var name: String
    var department: Department
    var branch: Country
    var experience: Int
    
}


//Question 1: create a third employee structure that contains the information from both based on common id.

struct CommonInfo {
    var employeeCommomId: Int
    var name: String
    var country: Country
    var department: Department
    var branch: Country
    var experience: Int
    var address : String
    var hobbies : String?
}

let emplPers1 = Personal(employeeID: 10, name: "Gaurav", country: Country.india, address: "12 gandhi Nagar, Etawah", hobbies: "chess")
let emplPers2 = Personal(employeeID: 11, name: "Chirag", country: Country.america, address: "19 Ashok Nagar, Delhi", hobbies: "Guitar")
let emplPers3 = Personal(employeeID: 12, name: "Saif", country: Country.japan, address: "12D Gomti Nagar, Lucknow", hobbies: "Dance")
let emplPers4 = Personal(employeeID: 13, name: "Talha", country: Country.china, address: "123/74 Poytechnic, Lucknow", hobbies: "chess")
let emplPers5 = Personal(employeeID: 14, name: "Raymon", country: Country.britain, address: "868 Cant, Bareilly", hobbies: "Shooting")
let emplPers6 = Personal(employeeID: 15, name: "Satyam", country: Country.india, address: "15 Miltery Nagar, Dehradun", hobbies: "Swimmimg")

var arrPer : [Personal] = [emplPers1, emplPers2, emplPers3, emplPers4, emplPers5, emplPers6]


let emplPro1 = Professional(employeeID: 10, name: "Gaurav", department: .IOS, branch: Country.india, experience: 3)
let emplPro2 = Professional(employeeID: 11, name: "Chirag", department: .Android, branch: Country.america, experience: 4)
let emplPro3 = Professional(employeeID: 12, name: "Saif  ", department: .FullStack, branch: Country.japan, experience: 1)
let emplPro4 = Professional(employeeID: 13, name: "Talha ", department: .JVM, branch: Country.china, experience: 2)
let emplPro5 = Professional(employeeID: 14, name: "Raymon", department: .IOS, branch: Country.britain, experience: 3)
let emplPro6 = Professional(employeeID: 15, name: "Satyam", department: .Web, branch: Country.india, experience: 5)

var arrPro: [Professional] = [emplPro1, emplPro2, emplPro3, emplPro4, emplPro5, emplPro6]

var arrInfo = [CommonInfo]()
var count = 0

for id in arrPer {
    count += 1
    if let i = arrPro.firstIndex(where: { $0.employeeID == id.employeeID }) {
        arrInfo.append(CommonInfo(employeeCommomId: id.employeeID, name: id.name, country: id.country, department: arrPro[i].department, branch: arrPro[i].branch, experience: arrPro[i].experience, address: id.address, hobbies: id.hobbies))
    }
}

for info in arrInfo{
    print(info)
}





//Question 2: write a function that takes the two structure and give me list of all the employee that live in certain country

func employeeList(arr : [Personal],country : Country) -> [String]{
    var list0 = [String]()
    for i in arr{
        if case country = i.country{
            list0.append(i.name)
        }
    }
    return list0
}

var empList = employeeList(arr: arrPer, country: Country.india)

for j in empList{
    print(j)
}





//Question 3: write a function that give me list of all the employee that live in certain department

func departmentList(array : [Professional],dept : Department) -> [String]{
    var list1 = [String]()
    for empl in array{
        if(empl.department == dept){
            list1.append(empl.name)
        }
    }
    return list1
}

var deptList = departmentList(array: arrPro, dept: .IOS)
for i in deptList{
    print(i)
}





//Question 4: write a function that give me list of all the employee that live in same country and work in the same branch.
//Sol:

func CommonBandC(array : [CommonInfo]) -> [String]{
    var list2 = [String]()
    for i in array{
        if case i.country = i.branch {
            list2.append(i.name)
        }
    }
    return list2
}

var samePlaceAndBranch = CommonBandC(array: arrInfo)

for j in samePlaceAndBranch{
    print(j)
}





//Question 5: write a function that return me list of all the employee name that has a hobby and with their experience
//Sol:


func hobbyAndExperience(arr : [CommonInfo]){
    for i in arr{
        if i.hobbies != nil{
            print("Name is \(i.name) and Experience is \(i.experience)")
        }
    }
}

hobbyAndExperience(arr: arrInfo)





//Question 6: write a function that return me list of all the employee name that starts with any “S”
//Sol:

func matchString(arr : [Professional]) -> [String]{
    var list3 = [String]()
    for i in arr{
        if i.name.contains("S") || i.name.contains("s"){
            list3.append(i.name)
        }
    }
    return list3
}

var empName = matchString(arr : arrPro)

for j in empName{
    print(j)
}


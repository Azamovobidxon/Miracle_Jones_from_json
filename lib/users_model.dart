
class Users {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  int? height;
  double? weight;
  String? eyeColor;
  Hair? hair;
  String? domain;
  String? ip;
  Address? address;
  String? macAddress;
  String? university;
  Company? company;
  Bank? bank;
  String? ein;
  String? ssn;
  String? userAgent;
  Users({
    required this.ein,
    required this.ssn,
    required this.userAgent,
    required this.company,
    required this.bank,
    required this.macAddress,
    required this.university,
    required this.address,
    required this.domain,
    required this.ip,
    required this.hair,
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
  });

  factory Users.fromJson(Map<String, Object?> json) => Users(
    userAgent: json["userAgent"] as String,
    ssn: json["ssn"] as String,
    ein: json["ein"] as String,
    company: Company.fromJson(json["company"] as Map<String, Object?>),
    bank: Bank.fromJson(json["bank"] as Map<String, Object?>),
    macAddress: json["macAddress"] as String?,
    university: json["university"] as String,
    address: Address.fromJson(json["address"] as Map<String, Object?>),
    domain: json["domain"] as String?,
    ip: json["ip"] as String?,
    hair: Hair.fromJson(json["hair"] as Map<String, Object?>),
    id: json["id"] as int?,
    firstName: json["firstName"] as String?,
    lastName: json["lastName"] as String?,
    maidenName: json["maidenName"] as String?,
    age: json["age"] as int?,
    gender: json["gender"] as String?,
    email: json["email"] as String?,
    phone: json["phone"] as String?,
    username: json["username"] as String?,
    password: json["password"] as String?,
    birthDate: json["birthDate"] as String?,
    image: json["image"] as String?,
    bloodGroup: json["bloodGroup"] as String?,
    height: json["height"] as int?,
    weight: json["weight"] as double?,
    eyeColor: json["eyeColor"] as String?,
  );

  @override
  String toString() {
    return 'Users(id: $id, firstName: $firstName, lastName: $lastName, maidenName: $maidenName, age: $age, gender: $gender, email: $email, phone: $phone, username: $username, password: $password, birthDate: $birthDate, image: $image, bloodGroup: $bloodGroup, height: $height, weight: $weight, eyeColor: $eyeColor, hair: $hair, domain: $domain, ip: $ip, address: $address, macAddress: $macAddress, university: $university, company: $company, bank: $bank, ein: $ein, ssn: $ssn, userAgent: $userAgent)';
  }
}

class Hair {
  String? color;
  String? type;
  Hair({
    required this.color,
    required this.type,
  });

  factory Hair.fromJson(Map<String, Object?> json) => Hair(
    color: json["color"] as String?,
    type: json["type"] as String?,
  );
}

class Address {
  String? address;
  String? city;
  String? postalCode;
  String? state;
  Coordinates? coordinates;
  Address({
    required this.postalCode,
    required this.state,
    required this.address,
    required this.city,
    required this.coordinates,
  });
  factory Address.fromJson(Map<String, Object?> json) => Address(
    postalCode: json["postalCode"] as String?,
    state: json["state"] as String,
    coordinates: Coordinates.fromJson(json["coordinates"] as Map<String, Object?>),

    address: json["address"] as String?,
    city: json["city"] as String?,
  );
}

class Coordinates {
  num? lat;
  num? lng;

  Coordinates({
    required this.lat,
    required this.lng,
  });

  factory Coordinates.fromJson(Map<String, Object?> json){ return Coordinates(
    lat: json["lat"] as num?,
    lng: json["lng"] as num?,
  );}
}

class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;
  Bank({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory Bank.fromJson(Map<String, Object?> json) => Bank(
    cardExpire: json["cardExpire"] as String,
    cardNumber: json["cardNumber"] as String,
    cardType: json["cardType"] as String,
    currency: json["currency"] as String,
    iban: json["iban"] as String,
  );
}

class Company {
  String? department;
  String? name;
  String? title;
  Address? address;
  Coordinates? coordinates;
  Company({
    required this.address,
    required this.department,
    required this.name,
    required this.title,
  });
  factory Company.fromJson(Map<String, Object?> json) => Company(
    address: Address.fromJson(json["address"] as Map<String,Object?>),
    department:json ["departament"] as String?,
    name: json["name"] as String?,
    title: json["title"] as String?,
  );
}


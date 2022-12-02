/// id : 1
/// name : "Leanne Graham"
/// username : "Bret"
/// email : "Sincere@april.biz"
/// address : {"street":"Kulas Light","suite":"Apt. 556","city":"Gwenborough","zipcode":"92998-3874","geo":{"lat":"-37.3159","lng":"81.1496"}}
/// phone : "1-770-736-8031 x56442"
/// website : "hildegard.org"
/// company : {"name":"Romaguera-Crona","catchPhrase":"Multi-layered client-server neural-net","bs":"harness real-time e-markets"}

class Usermodel {
  Usermodel({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  }) {
    _id = id;
    _name = name;
    _username = username;
    _email = email;
    _address = address;
    _phone = phone;
    _website = website;
    _company = company;
  }

  Usermodel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    _phone = json['phone'];
    _website = json['website'];
    _company =
        json['company'] != null ? Company.fromJson(json['company']) : null;
  }
  int? _id;
  String? _name;
  String? _username;
  String? _email;
  Address? _address;
  String? _phone;
  String? _website;
  Company? _company;

  int? get id => _id;
  String? get name => _name;
  String? get username => _username;
  String? get email => _email;
  Address? get address => _address;
  String? get phone => _phone;
  String? get website => _website;
  Company? get company => _company;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['username'] = _username;
    map['email'] = _email;
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    map['phone'] = _phone;
    map['website'] = _website;
    if (_company != null) {
      map['company'] = _company?.toJson();
    }
    return map;
  }
}

/// name : "Romaguera-Crona"
/// catchPhrase : "Multi-layered client-server neural-net"
/// bs : "harness real-time e-markets"

class Company {
  Company({
    String? name,
    String? catchPhrase,
    String? bs,
  }) {
    _name = name;
    _catchPhrase = catchPhrase;
    _bs = bs;
  }

  Company.fromJson(dynamic json) {
    _name = json['name'];
    _catchPhrase = json['catchPhrase'];
    _bs = json['bs'];
  }
  String? _name;
  String? _catchPhrase;
  String? _bs;

  String? get name => _name;
  String? get catchPhrase => _catchPhrase;
  String? get bs => _bs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['catchPhrase'] = _catchPhrase;
    map['bs'] = _bs;
    return map;
  }
}

/// street : "Kulas Light"
/// suite : "Apt. 556"
/// city : "Gwenborough"
/// zipcode : "92998-3874"
/// geo : {"lat":"-37.3159","lng":"81.1496"}

class Address {
  Address({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
  }) {
    _street = street;
    _suite = suite;
    _city = city;
    _zipcode = zipcode;
    _geo = geo;
  }

  Address.fromJson(dynamic json) {
    _street = json['street'];
    _suite = json['suite'];
    _city = json['city'];
    _zipcode = json['zipcode'];
    _geo = json['geo'] != null ? Geo.fromJson(json['geo']) : null;
  }
  String? _street;
  String? _suite;
  String? _city;
  String? _zipcode;
  Geo? _geo;

  String? get street => _street;
  String? get suite => _suite;
  String? get city => _city;
  String? get zipcode => _zipcode;
  Geo? get geo => _geo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['street'] = _street;
    map['suite'] = _suite;
    map['city'] = _city;
    map['zipcode'] = _zipcode;
    if (_geo != null) {
      map['geo'] = _geo?.toJson();
    }
    return map;
  }
}

/// lat : "-37.3159"
/// lng : "81.1496"

class Geo {
  Geo({
    String? lat,
    String? lng,
  }) {
    _lat = lat;
    _lng = lng;
  }

  Geo.fromJson(dynamic json) {
    _lat = json['lat'];
    _lng = json['lng'];
  }
  String? _lat;
  String? _lng;

  String? get lat => _lat;
  String? get lng => _lng;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lng'] = _lng;
    return map;
  }
}






// import 'dart:convert';

// class Usermodel {
//   final int id;
//   final String name;
//   final String username;
//   final String email;
//   final Address address;
//   final String phone;
//   final String website;
//   final Company company;
//   Usermodel({
//     required this.id,
//     required this.name,
//     required this.username,
//     required this.email,
//     required this.address,
//     required this.phone,
//     required this.website,
//     required this.company,
//   });

//   Usermodel copyWith({
//     int? id,
//     String? name,
//     String? username,
//     String? email,
//     Address? address,
//     String? phone,
//     String? website,
//     Company? company,
//   }) {
//     return Usermodel(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       username: username ?? this.username,
//       email: email ?? this.email,
//       address: address ?? this.address,
//       phone: phone ?? this.phone,
//       website: website ?? this.website,
//       company: company ?? this.company,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'username': username,
//       'email': email,
//       'address': address.toMap(),
//       'phone': phone,
//       'website': website,
//       'company': company.toMap(),
//     };
//   }

//   factory Usermodel.fromMap(Map<String, dynamic> map) {
//     return Usermodel(
//       id: map['id'].toInt() as int,
//       name: map['name'] as String,
//       username: map['username'] as String,
//       email: map['email'] as String,
//       address: Address.fromMap(map['address'] as Map<String, dynamic>),
//       phone: map['phone'] as String,
//       website: map['website'] as String,
//       company: Company.fromMap(map['company'] as Map<String, dynamic>),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Usermodel.fromJson(String source) =>
//       Usermodel.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Usermodel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
//   }

//   @override
//   bool operator ==(covariant Usermodel other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.name == name &&
//         other.username == username &&
//         other.email == email &&
//         other.address == address &&
//         other.phone == phone &&
//         other.website == website &&
//         other.company == company;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         name.hashCode ^
//         username.hashCode ^
//         email.hashCode ^
//         address.hashCode ^
//         phone.hashCode ^
//         website.hashCode ^
//         company.hashCode;
//   }
// }

// class Address {
//   final String street;
//   final String suite;
//   final String city;
//   final String zipcode;
//   final Geo geo;
//   Address({
//     required this.street,
//     required this.suite,
//     required this.city,
//     required this.zipcode,
//     required this.geo,
//   });

//   Address copyWith({
//     String? street,
//     String? suite,
//     String? city,
//     String? zipcode,
//     Geo? geo,
//   }) {
//     return Address(
//       street: street ?? this.street,
//       suite: suite ?? this.suite,
//       city: city ?? this.city,
//       zipcode: zipcode ?? this.zipcode,
//       geo: geo ?? this.geo,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'street': street,
//       'suite': suite,
//       'city': city,
//       'zipcode': zipcode,
//       'geo': geo.toMap(),
//     };
//   }

//   factory Address.fromMap(Map<String, dynamic> map) {
//     return Address(
//       street: map['street'] as String,
//       suite: map['suite'] as String,
//       city: map['city'] as String,
//       zipcode: map['zipcode'] as String,
//       geo: Geo.fromMap(map['geo'] as Map<String, dynamic>),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Address.fromJson(String source) =>
//       Address.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
//   }

//   @override
//   bool operator ==(covariant Address other) {
//     if (identical(this, other)) return true;

//     return other.street == street &&
//         other.suite == suite &&
//         other.city == city &&
//         other.zipcode == zipcode &&
//         other.geo == geo;
//   }

//   @override
//   int get hashCode {
//     return street.hashCode ^
//         suite.hashCode ^
//         city.hashCode ^
//         zipcode.hashCode ^
//         geo.hashCode;
//   }
// }

// class Geo {
//   final String lat;
//   final String lng;
//   Geo({
//     required this.lat,
//     required this.lng,
//   });

//   Geo copyWith({
//     String? lat,
//     String? lng,
//   }) {
//     return Geo(
//       lat: lat ?? this.lat,
//       lng: lng ?? this.lng,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'lat': lat,
//       'lng': lng,
//     };
//   }

//   factory Geo.fromMap(Map<String, dynamic> map) {
//     return Geo(
//       lat: map['lat'] as String,
//       lng: map['lng'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Geo.fromJson(String source) =>
//       Geo.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Geo(lat: $lat, lng: $lng)';

//   @override
//   bool operator ==(covariant Geo other) {
//     if (identical(this, other)) return true;

//     return other.lat == lat && other.lng == lng;
//   }

//   @override
//   int get hashCode => lat.hashCode ^ lng.hashCode;
// }

// class Company {
//   final String name;
//   final String catchPhrase;
//   final String bs;
//   Company({
//     required this.name,
//     required this.catchPhrase,
//     required this.bs,
//   });

//   Company copyWith({
//     String? name,
//     String? catchPhrase,
//     String? bs,
//   }) {
//     return Company(
//       name: name ?? this.name,
//       catchPhrase: catchPhrase ?? this.catchPhrase,
//       bs: bs ?? this.bs,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'catchPhrase': catchPhrase,
//       'bs': bs,
//     };
//   }

//   factory Company.fromMap(Map<String, dynamic> map) {
//     return Company(
//       name: map['name'] as String,
//       catchPhrase: map['catchPhrase'] as String,
//       bs: map['bs'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Company.fromJson(String source) =>
//       Company.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'Company(name: $name, catchPhrase: $catchPhrase, bs: $bs)';

//   @override
//   bool operator ==(covariant Company other) {
//     if (identical(this, other)) return true;

//     return other.name == name &&
//         other.catchPhrase == catchPhrase &&
//         other.bs == bs;
//   }

//   @override
//   int get hashCode => name.hashCode ^ catchPhrase.hashCode ^ bs.hashCode;
// }

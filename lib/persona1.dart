class UserPersona {


  String phone;
  String email;
  String age;
  String job;
  String persona;

  UserPersona(this.phone, this.email, this.age, this.job, this.persona);

  String toParams() => '?phone=$phone&email=$email&age=$age&job=$job&persona=$persona';
}
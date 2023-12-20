class TrackingPersona {

  String email;
  String sessionhash;
  String activetime;
  String clickedbooks;
  String purchacedbooks;

  TrackingPersona(this.email, this.sessionhash, this.activetime, this.clickedbooks, this.purchacedbooks);

  String toParams() => '?email=$email&sessionhash=$sessionhash&activetime=$activetime&clickedbooks=$clickedbooks&purchacedbooks=$purchacedbooks';
}
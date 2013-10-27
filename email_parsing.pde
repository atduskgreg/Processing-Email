Email mail;

void setup() {
  textFont(loadFont("Helvetica-24.vlw"), 24);
  
  // init the email from a text file,
  // make sure we include the new-lines when we load
  String msg = join(loadStrings("message2.txt"), "\n");
  
  mail = new Email(msg);
  size(800, 800);
}

void draw() {
  background(255);
  fill(0); 
  stroke(0);
  String l = "";
  try{
    l += "Subject: " + mail.getSubject() + "\n";
    l += "From: " + mail.getFrom() + "\n";
    l += "To: " + join(mail.getRecipients(),", ") + "\n";
    l += "Date: " + mail.getDate() + "\n";
    l += "Body:\n" + mail.getBody();
  } catch(Exception e){
    println("something went wrong: " + e.toString());
  }
  text(l, 25, 25);
}


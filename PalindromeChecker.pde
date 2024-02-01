public void setup(){
  String lines[] = {"test", "rotator", "rewriter", "nurses", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
for (int i=0; i < lines.length; i++){
  if(palindrome(lines[i])==true)
    System.out.println(lines[i] + " IS a palindrome.");
  else
    System.out.println(lines[i] + " is NOT a palindrome.");
  }
}
public boolean palindrome(String sWord){
  if(reverse(noSpaces(onlyLetters(sWord))).toLowerCase().equals(noSpaces(onlyLetters(sWord)).toLowerCase()))
     return true;
  return false;
}
public String reverse(String sWord){
  String s = "";
  for(int i = sWord.length(); i > 0; i--)
    s += sWord.substring(i-1, i);
  return s;
}

public String noSpaces(String sWord){
  String s = "";
  for(int i = 0; i < sWord.length(); i++)
    if(sWord.charAt(i) != ' ')
      s+=sWord.substring(i, i+1);
  return s;
}

public String onlyLetters(String sString){
  String s = "";
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      s += sString.substring(i,i+1);
  return s;
}

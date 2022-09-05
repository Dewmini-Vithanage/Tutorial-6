object Cipher extends App{
  
  val alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	val shift = (3 + alphabet.size) % alphabet.size

	val inputText = scala.io.StdIn.readLine("Enter Message to encrypt: ")
	
 def encrypt(inputText:String):String={
	val outputText = inputText.map( (c: Char) => { 

		val x = alphabet.indexOf(c.toUpper)

		if (x == -1){
			c
		}
		else{
			alphabet((x + shift) % alphabet.size)
			} 
	});

	return outputText
}
	
	println(encrypt(inputText))
	
val inputT = scala.io.StdIn.readLine("Enter Message to decrypt: ")
 def decrypt(inputT:String):String={
	val outputText = inputT.map( (c: Char) => { 

		val x = alphabet.indexOf(c.toUpper)

		if (x == -1){
			c
		}
		else{
			alphabet((x - shift) % alphabet.size)
			} 
	});

	return outputText }
 

println(decrypt(inputT))
  }

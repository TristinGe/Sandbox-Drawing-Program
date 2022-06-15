//String CurrentSongPosition="song[currentSong].position()";
void MusicSetup()
{
  minim = new Minim(this); //load from data directroy, loadFile() should also load from project folder, like loadImage()
  song[currentSong] = minim.loadFile("MusicDownload/groove.mp3"); //able to pass absolute paths, file name & extesnion, and URL
  song[currentSong+=1] = minim.loadFile("MusicDownload/ヒグチアイ - 悪魔の子.mp3");
  song[currentSong+=1] = minim.loadFile("MusicDownload/ゆう十 - Lemon（Cover 米津玄师）.mp3");
  song[currentSong+=1] = minim.loadFile("MusicDownload/ワルキューレ - 一度だけの恋なら.mp3");
  currentSong-=currentSong;
  for ( int i=currentSong; i<song.length; i++ ) {
    songMetaData[i] = song[i].getMetaData(); //reads song meta 1, like song 1, mimicing array notation
  }//End Meta Data
  
   //songMetaData[0] = song[0].getMetaData(); //reads song meta 1, like song 1, mimicing array notation
   //songMetaData[1] = song[1].getMetaData();
   //songMetaData[2] = song[2].getMetaData();
   //songMetaData[3] = song[3].getMetaData();
   

  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
  println( "Start of Console" );
  println( "Click the Console to Finish Starting this Program" ); //Review of OS-level button
  println( "Title", songMetaData[currentSong].title() ); //Introduction of Key:Value Pairs (similar to websites)
  //
}
//
void MusicDraw()
{
  //Note: logical operators could be nested IFs
  if ( song[currentSong].isLooping() && song[currentSong].loopCount()!=-1 ) println("There are", song[currentSong].loopCount(), "loops left.");
  if ( song[currentSong].isLooping() && song[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  if ( song[currentSong].isPlaying() && !song[currentSong].isLooping() ) println("Play Once");
  //
  println("Current Song:", currentSong);
  println( "Song Position", song[currentSong].position(), "Song Length", song[currentSong].length() );
  //
  fill(purple); 
  textAlign (CENTER, CENTER); 
  //
  textFont(font, 20);
  String[] Info = new String[3];
  Info[0] = songMetaData[currentSong].title();
  Info[1] = String.valueOf(song[currentSong].length()/1000);
  Info[2] = String.valueOf(song[currentSong].position()/1000);
  String INFO = join(Info, " / "); 
  
  //rect(width*1/4, height*0, width*1/2, height*1/10);
  fill(black);
  text( INFO, width*1/4, height*0, width*1/2, height*1/10);
  fill(255); 
  //
}
//
void MusicButton()
{
if( key==' '){
    if ( song[currentSong].isPlaying() ) { 
      song[currentSong].pause();
    } else { 
      if(LoopI==true){
      song[currentSong].loop();
      } else {
      song[currentSong].play();if(song[currentSong].position()>= song[currentSong].length()-2 ){ playlistArrayErrorN();song[currentSong].play();}}
    }}
  //
  //Another Play Button, as a finite loop() && infinite loop()
  //Only press a number for this code below
  println(key);
  if ( key=='1' || key=='9' ) {
    //Note: "9" is assumed to be massive! "Simulate Infinite"
    if ( key=='1' ) println("Looping Once");
    if ( key=='9' ) println("Looping 9 times."); //Simulate Infinity
    String keystr = String.valueOf(key); //Must press a number
    println("Number of Repeats is", keystr); 
    int loopNum = int(keystr); //Local Variable plays once and loops loopNum of times
    song[currentSong].loop(loopNum); //Parameter is number of loops
    // if ( key=='l' || key=='L' ) song1.loop(loopNum); //Parameter is number of loops
  }
  if ( key=='i' || key=='I' ) song[currentSong].loop(); //Infinite Loop, no parameter OR -1
  if ( key>='2' && key!='9' ) println("I donot loop that much, press infinite loop.");
  //
  if ( key=='m' || key=='M' ) { //Mute Button
    //Note: Mute has built-in pause button
    //Note: built-in .isPlaying() question
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }//End Mute Button
  //
  //Built-in question: .isPlaying()
  if ( key==CODED ){if(keyCode==RIGHT){song[currentSong].skip( 1000 );}}  //Skip forward 1 second (1000 milliseconds)
  if ( key==CODED ){if(keyCode==LEFT){song[currentSong].skip( -1000 );}} //Skip backwards 1 second (1000 milliseconds)
  //
  if ( key=='s' || key=='S' ) { //Stop Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    //} else if (){
     // song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }//End Stop Button
  //
  if ( key=='n' || key=='N' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();
    }
  }//End Next Button
  //
  if ( key=='b' || key=='B' ){
  if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();
    }
  }
}

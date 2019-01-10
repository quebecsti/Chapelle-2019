// Import the libraries

import g4p_controls.*;
import http.requests.*;
import processing.net.*;


// Declare clients
Client BSS;
Client MPC;
Client VLC;
Client CAM1;



JSONObject json;

int ComPort;
String  BSSip;
int  BSSport;
String  MPCip;
int  MPCport;
String  VLCip;
int  VLCport;
String  CAM1ip;
int  CAM1port;



public void setup() {
  size(600, 600, JAVA2D);
  createGUI();

  readJson();

  // Place your setup code here


  BSS = new Client(this, BSSip, BSSport);
  MPC = new Client(this, MPCip, MPCport);
  VLC = new Client(this, VLCip, VLCport);
  CAM1 = new Client(this, CAM1ip, CAM1port);

  VLC_login();
}

public void draw() {
  background(230);
}



public void debutSoiree_tsk() {
  unMuteMaster();
  BSSmuteVLC();
  BSSMuteWL();

  //BSSFadeInSVSI();
  
  MPC.write("GTQ 2,2"+"\r\n"); //MPC  set to standard CUE
  MPC.write("GTQ 1,1"+"\r\n"); //MPC  set to standard CUE

  Cam1TakePreset1(); // Cam1 set to preset1  ( wide )
}


public void ouverture_tsk() {

  outSideBusiness();

  MPC.write("GTQ 1,2"+"\r\n");  //lumieres pourtour slow chase vers l'autel

  VLC_Song1();
  BSSFadeOutSVSI();
  //BSSFadeInVLC();
  BSSUnMuteVLC();
  delay(26000); // timing avec chanson

  celebration_tsk();
}



public void celebration_tsk() {
  MPC.write("GTQ 1,1"+"\r\n");  //lumieres pourtour static white
  BSSunMuteWL(); //BSS un mute prete

  BSSFadeOutVLC();//BSS Fade out wedding song
  VLC_Stop();
}



public void sortie_tsk() {


  VLC_Song2();  //vlc set to song 2  //vlc start song
  BSSMuteWL(); //bss mute preist
  BSSUnMuteVLC(); //set VLC wedding music to full
  BSSFadeInVLC();
  MPC.write("GTQ 1,3"+"\r\n");  //MPC lights show
  delay(18000);


  /////////  Light show idea 
  /////////////   chase vers sortie 2-3 secondesf
  ////////////     gros party par la suite

  BSSFadeOutVLC();
  BSSFadeInSVSI();
  BSSmuteVLC();
  BSSFadeInVLC();
  debutSoiree_tsk();
}


public void fin_tsk() {
  MPC.write("RQL 1"+"\r\n");
  MPC.write("RQL 2"+"\r\n");
  muteMaster();

  VLC_Stop();  //VLC stop music
  BSSmuteVLC();
}



public void outSideBusiness() {

  MPC.write("GTQ 2,2"+"\r\n");  ///MPC  light w gobo, slow spin
}
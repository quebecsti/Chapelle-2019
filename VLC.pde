int Song1;
int Song2;

public void defaultSong(){
Song1 = 6;
Song2 = 5;
}


public void vadorSong(){
Song1 = 7;
Song2 = 8;
}

public void pirateSong(){
Song1 = 9;
Song2 = 10;
}

public void mermaidSong(){
Song1 = 11;
Song2 = 12;
}

public void wrestlerSong(){
Song1 = 13;
Song2 = 14;
}

public void VLC_login() {
  VLC.write("1234"+"\r\n");
  VLC.clear();
}

public void VLC_Play() {
 VLC.write("play"+"\r\n");
  VLC.clear();  
}


public void VLC_Stop() {
 VLC.write("stop"+"\r\n");
  VLC.clear();
}

public void VLC_Song1() {
 VLC.write("goto "+Song1+"\r\n");
 VLC.clear();
}

public void VLC_Song2() {
 VLC.write("goto "+Song2+"\r\n");
 VLC.clear();
 }

public void Cam1TakePreset1() {

  GetRequest get = new GetRequest("http://192.168.0.3/cgi-bin/aw_ptz?cmd=%23R00&res=1");
  get.send();
}

public void Cam1TakePreset2() {

  GetRequest get = new GetRequest("http://192.168.0.3/cgi-bin/aw_ptz?cmd=%23R01&res=1");
  get.send();
}
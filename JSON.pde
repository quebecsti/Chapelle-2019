

public void readJson() {


  json = loadJSONObject("data.json");

  ComPort = json.getInt("ComPort");
  
  BSSip = json.getString("BSSip");
  BSSport = json.getInt("BSSport");

  MPCip = json.getString("MPCip");
  MPCport = json.getInt("MPCport");

  VLCip = json.getString("VLCip");
  VLCport = json.getInt("VLCport");

  CAM1ip = json.getString("CAM1ip");
  CAM1port = json.getInt("CAM1port");

}
package veri;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
public class Api {
	
	public String Api_derleyici(String kimlik, String cSecret, String cevap, String dil, String version){
	    String sonuc ="";
	    
	    
	  String clientId = kimlik;
      String clientSecret = cSecret; 
      String script=cevap;
      String language = dil;
      String versionIndex = version;
       

      try {
          URL url = new URL("https://api.jdoodle.com/v1/execute");
          
          HttpURLConnection connection = (HttpURLConnection) url.openConnection();
          connection.setDoOutput(true);
          connection.setRequestMethod("POST");
          connection.setRequestProperty("Content-Type", "application/json");

          String input = "{\"clientId\": \"" + clientId + "\",\"clientSecret\":\"" + clientSecret + "\",\"script\":\"" + script +
          "\",\"language\":\"" + language + "\",\"versionIndex\":\"" + versionIndex + "\"} ";
          OutputStream outputStream = connection.getOutputStream();
          outputStream.write(input.getBytes());
          outputStream.flush();
          if (connection.getResponseCode() != HttpURLConnection.HTTP_OK) {
              throw new RuntimeException("Please check your inputs : HTTP error code : "+ connection.getResponseCode());
          }
          BufferedReader bufferedReader;
          bufferedReader = new BufferedReader(new InputStreamReader(
          (connection.getInputStream())));

          String output;
          while ((output = bufferedReader.readLine()) != null) {
              sonuc+=output;
          }
          connection.disconnect();

      } catch (MalformedURLException e) {
          e.printStackTrace();
      } catch (IOException e) {
          e.printStackTrace();
      }
	    return sonuc;    
	    }
}
package wikistruts.model;

import java.util.HashMap;
import java.util.Iterator;

public class Termes {
   private static HashMap<String,String> listeDeTermes = new HashMap<String,String>();;

   public static void setDefinition(String terme, String definition) {
      if(terme!=null && definition != null && !terme.equals("") && !definition.equals(""))
	     Termes.listeDeTermes.put(terme, definition);
   }

   public static String getDefinition(String terme) {
      String definition = "Terme non trouvé";
      if(Termes.listeDeTermes.containsKey(terme))
	     definition = Termes.listeDeTermes.get(terme);
      return definition;
   }
}

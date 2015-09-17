package web;


import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;


public class CustomizedCar {
	
	private static DatastoreService datastore=DatastoreServiceFactory.getDatastoreService();

	public static boolean addCustomizedCar(String car,String color,String engine,String customer)
	{
		
		System.out.println("Start to create custom car");
		
		Entity user=new Entity("Car", customer);
	
		user.setProperty("car", car);
		user.setProperty("color", color);
		user.setProperty("engine", engine);
		user.setProperty("customer", customer);
		
		System.out.println("the datastore: "+ datastore.put(user));
		
		System.out.println("End to create custom car");
		System.out.println("Key - "+user.getKey()+" and Kind - "+user.getKind());

		return true;	
	}

	public static Iterable<Entity> listUsers(String kind,String userid){
		
		System.out.println("Kind - "+kind+" and User - "+userid);
		Query q=new Query(kind).addSort("UserID", Query.SortDirection.ASCENDING);
		Iterable<Entity> pq=datastore.prepare(q).asIterable(FetchOptions.Builder.withLimit(5));
		return pq;
	}
	
	public static boolean loginUser(String email,String password)
	{
		
	String uName=null;
	String passWd=null;
	Query q=new Query("User");
	PreparedQuery pq=datastore.prepare(q);
	java.util.List<Entity> res = pq.asList(FetchOptions.Builder.withLimit(2));
	
	for(Entity user:pq.asIterable()){
		System.out.println((String)user.getProperty("email"));
		uName=(String)user.getProperty("email");
		passWd=(String)user.getProperty("password");
		
		if(email.equals((String)user.getProperty("email"))){
			break;
		}

	}
	if(uName !=null && uName.equals(email)&& passWd !=null && passWd.equals(password))return true;
	else return false;
	
	}
	
}
public class AccountLocationManager {
    public static String getCity(String accountNumber) {
       Account acc =  [SELECT BillingCity
                        FROM Account
                        WHERE AccountNumber = :accountNumber LIMIT 1];
       String city = acc.BillingCity;
       return city;
    }
}

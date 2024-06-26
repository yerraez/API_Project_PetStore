package karate.e2e;


import com.intuit.karate.junit5.Karate;


public class ManageOrdersRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:karate/e2e/manage_sales_orders.feature").relativeTo(getClass());
    }

}

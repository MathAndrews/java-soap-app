package org.mandrews.manmart;

import javax.jws.WebService;
import java.util.ArrayList;
import java.util.List;

@WebService
public class ProductCatalog {

    public List<String> getProductCategories() {
        List<String>  categories = new ArrayList<String>();
        categories.add("Books");
        categories.add("Music");
        categories.add("Movies");
        return categories;
    }
}

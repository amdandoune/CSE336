package com.marvinyan.ontrack;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * Created by marvinyan on 4/16/2017.
 */
public class ShowFormMap extends SimpleTagSupport {
    private Map beanMap;

    public void doTag() throws IOException, JspException {
        JspWriter out = getJspContext().getOut();
        JspFragment fragment = getJspBody();
        Set<Map.Entry> set = beanMap.entrySet();

        for (Map.Entry me : set) {
            getJspContext().setAttribute("name", me.getKey());
            getJspContext().setAttribute("value", me.getValue());
            fragment.invoke(out);
        }
    }

    // hw7.tld: <attribute> -> <name>
    // must match that name or method won't be called
    public void setBean(FormBean bean) throws Exception {
        Class c = Class.forName("com.marvinyan.ontrack.FormBean");
        beanMap = new HashMap<>();
        Field[] fields = c.getDeclaredFields();

        for (Field f : fields) {
            String name = f.getName();
            String camelName = "get" + name.substring(0, 1).toUpperCase() + name.substring(1);
            Method m = c.getMethod(camelName);
            String value = (String) m.invoke(bean);
            beanMap.put(name, value);
        }
    }
}
